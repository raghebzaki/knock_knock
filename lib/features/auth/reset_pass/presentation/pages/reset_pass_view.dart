import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/arguments.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/auth/reset_pass/presentation/manager/verify_account_cubit.dart';
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
                  arguments: ChangePassArgs(
                    email: widget.email,
                  ),
                );
              } else {
                context.defaultSnackBar(S.of(context).failedToCheckOtp);
                // defaultSnackBar(context, S.of(context).IncorrectVerificationCode);
              }
            },
            resendCode: (state) {
              context.defaultSnackBar("${S.current.otp_sent} $state");
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
          // ResetPassCubit resetPassCubit = ResetPassCubit.get(context);
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
                      Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: Dimensions.p30.h),
                        child: Pinput(
                          controller: pinCtrl,
                          onChanged: (value) {
                            // UserData.otp = value;
                          },
                          closeKeyboardWhenCompleted: false,
                          length: 4,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                      ConditionalBuilder(
                        condition: state is! Loading,
                        builder: (BuildContext context) {
                          return Row(
                            children: [
                              Expanded(
                                child: CustomBtn(
                                  bgColor: AppColors.secondary,
                                  fgColor: AppColors.primary,
                                  onPressed: () {
                                    // resetPassCubit.verifyUserAccount(
                                    //   ResetPassEntity(
                                    //     email: widget.email,
                                    //     otp: int.parse(pinCtrl.text),
                                    //   ),
                                    // );
                                    context.pushNamed(changePassPageRoute,arguments:ChangePassArgs(email: widget.email));
                                  },
                                  label: S.current.verify,
                                ),
                              ),
                              Gap(5.w),
                              Expanded(
                                child: CustomBtn(
                                  bgColor: AppColors.primary,
                                  fgColor: AppColors.secondary,
                                  onPressed: () {
                                    // resetPassCubit.resendCode(widget.email);
                                  },
                                  label: S.current.sendAgain,
                                ),
                              ),
                            ],
                          );
                        },
                        fallback: (BuildContext context) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
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
