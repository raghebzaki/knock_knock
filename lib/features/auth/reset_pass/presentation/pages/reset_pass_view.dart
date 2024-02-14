import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/arguments.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/auth/reset_pass/presentation/manager/reset_pass_cubit.dart';
import 'package:pinput/pinput.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';

class ResetPassView extends StatefulWidget {
  final String email;

  const ResetPassView({super.key, required this.email});

  @override
  State<ResetPassView> createState() => _ResetPassViewState();
}

class _ResetPassViewState extends State<ResetPassView> {
  TextEditingController pinCtrl = TextEditingController();
  bool timer = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<ResetPassCubit>(),
      child: BlocConsumer<ResetPassCubit, ResetPassStates>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              if (state.status == "1") {
                context.defaultSnackBar(S.of(context).otpIsCorrect);
                context.pushNamed(
                  changePassPageRoute,
                  arguments: ChangePasAedgs(
                    email: widget.email,
                  ),
                );
              } else {
                context.defaultSnackBar(S.of(context).failedToCheckOtp);
                // defaultSnackBar(context, S.of(context).IncorrectVerificationCode);
              }
            },
            resendCode: (state) {
              context.defaultSnackBar("${S.current.otpSentTo} $state");
            },
            error: (errCode, err) {
              context.defaultSnackBar("${S.current.err_code}: $errCode, $err");
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          ResetPassCubit resetPassCubit = ResetPassCubit.get(context);
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(
                  Dimensions.p16,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(60.h),
                      Image.asset(
                        AppImages.appLogo,
                        height: 100.h,
                        width: 450.w,
                      ),
                      Gap(20.h),
                      Text(
                        S.current.verifyAccount,
                        style: CustomTextStyle.kTextStyleF24,
                      ),
                      Gap(20.h),
                      StreamBuilder(
                          stream: resetPassCubit.pinStream,
                          builder: (context, snapshot) {
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Dimensions.p30.h),
                                  child: Pinput(
                                    onChanged: (code) {
                                      resetPassCubit.validateCode(code);
                                    },
                                    closeKeyboardWhenCompleted: false,
                                    // onSubmitted: (value) {
                                    //   verifyAccountCubit.verifyUserAccount(
                                    //     VerifyAccountEntity(
                                    //       email: widget.email,
                                    //       otp: pinCtrl.text,
                                    //     ),
                                    //   );
                                    //   // context.pushNamed(login);
                                    // },
                                    length: 4,
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    focusNode: FocusNode(),
                                    showCursor: true,
                                    defaultPinTheme: PinTheme(
                                      height: 60.h,
                                      width: 60.w,
                                      decoration: const BoxDecoration(
                                        color: AppColors.primary,
                                        border: BorderDirectional(
                                          bottom: BorderSide(
                                            color: AppColors.secondary,
                                            width: 2,
                                            style: BorderStyle.solid,
                                          ),
                                        ),
                                      ),
                                      textStyle: CustomTextStyle.kPinTextStyle,
                                    ),
                                  ),
                                ),
                                snapshot.hasError
                                    ? Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    snapshot.error.toString(),
                                    style: const TextStyle(
                                      color: AppColors.errorColor,
                                    ),
                                  ),
                                )
                                    : Gap(5.h),
                              ],
                            );
                          }),
                      StreamBuilder(
                          stream: resetPassCubit.validatePinBtnStream,
                          builder: (context, snapshot) {
                            return ConditionalBuilder(
                              condition: state is! Loading,
                              builder: (BuildContext context) {
                                return Row(
                                  children: [
                                    Expanded(
                                      child: CustomBtn(
                                        bgColor: AppColors.secondary,
                                        fgColor: AppColors.primary,
                                        onPressed: snapshot.hasData
                                            ? () {
                                          context
                                              .pushNamed(changePassPageRoute);
                                        }
                                            : null,
                                        label: S.current.verify,
                                      ),
                                    ),
                                    Gap(5.w),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {},
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            vertical: 11.h,
                                          ),
                                          decoration: BoxDecoration(
                                            color: AppColors.primary,
                                            borderRadius: BorderRadius.circular(
                                                Dimensions.r10),
                                            border: Border.all(
                                                color: AppColors.secondary),
                                          ),
                                          child: Center(
                                              child: Text(
                                                "Send Code",
                                                style: CustomTextStyle.kBtnTextStyle
                                                    .copyWith(
                                                  color: AppColors.secondary,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                              fallback: (BuildContext context) => const Center(
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
