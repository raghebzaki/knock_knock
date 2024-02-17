import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:pinput/pinput.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../../domain/entities/verify_account_entity.dart';
import '../manager/verify_account_cubit.dart';

class VerifyAccountView extends StatefulWidget {
  final String email;

  const VerifyAccountView({super.key, required this.email});

  @override
  State<VerifyAccountView> createState() => _VerifyAccountViewState();
}

class _VerifyAccountViewState extends State<VerifyAccountView> {
  TextEditingController pinCtrl = TextEditingController();
  bool timer = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<VerifyAccountCubit>(),
      child: BlocConsumer<VerifyAccountCubit, VerifyAccountStates>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              if (state.status == 1) {
                context.defaultSnackBar(S.of(context).accountVerifiedSuccessfully);
                context.pushNamed(loginPageRoute);
              } else {
                context.defaultSnackBar(S.of(context).failedToVerifyAccount);
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
          VerifyAccountCubit verifyAccountCubit =
              VerifyAccountCubit.get(context);
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
                          stream: verifyAccountCubit.pinStream,
                          builder: (context, snapshot) {
                            return Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      vertical: Dimensions.p30.h),
                                  child: Pinput(
                                    onChanged: (code) {
                                      verifyAccountCubit.validateCode(code);
                                    },
                                    closeKeyboardWhenCompleted: false,
                                    
                                    length: 6,
                                    controller: pinCtrl,
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
                          stream: verifyAccountCubit.validatePinBtnStream,
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
                                          verifyAccountCubit.verifyUserAccount(
                                                  VerifyAccountEntity(
                                                    email: widget.email,
                                                    otp: pinCtrl.text,
                                                  ),
                                                );
                                              }
                                            : null,
                                        label: S.current.verify,
                                      ),
                                    ),
                                    Gap(5.w),
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () {
                                          verifyAccountCubit.resendCode(widget.email);
                                        },
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
                                            S.of(context).sendCode,
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
