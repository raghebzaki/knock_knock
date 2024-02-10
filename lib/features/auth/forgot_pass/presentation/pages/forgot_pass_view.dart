import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/forgot_pass_cubit.dart';

class ForgotPassView extends StatefulWidget {
  const ForgotPassView({super.key});

  @override
  State<ForgotPassView> createState() => _ForgotPassViewState();
}

class _ForgotPassViewState extends State<ForgotPassView> {
  GlobalKey<FormState> formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<ForgotPassCubit>(),
      child: BlocConsumer<ForgotPassCubit, ForgotPassStates>(
        listener: (context, state) {
          ForgotPassCubit forgotPassCubit = ForgotPassCubit.get(context);
          state.maybeWhen(
            success: (state) {
              if (state.statusCode == 1) {
                context.defaultSnackBar(
                  "${S.of(context).otp_sent} ${forgotPassCubit.emailCtrl.text}",
                );
                context.pushNamed(
                  resetPassPageRoute,
                  arguments: ResetPassArgs(
                    email: forgotPassCubit.emailCtrl.text.isNullOrEmpty(),
                  ),
                );
              } else {
                context
                    .defaultSnackBar(S.of(context).email_wrong);
              }
            },
            error: (errCode, err) {
              context.defaultSnackBar("${S.of(context).err_code}: $errCode, $err");
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          ForgotPassCubit forgotPassCubit = ForgotPassCubit.get(context);
          return Scaffold(
            body: Form(
              key: formKey,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(
                    Dimensions.p16,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                AppImages.appLogo,
                                height: 180.h,
                                width: 180.w,
                              ),
                            ),
                            Gap(40.h),
                            Text(
                              S.current.forgot_pass,
                              style: CustomTextStyle.kTextStyleF20.copyWith(
                                color: AppColors.black80,
                              ),
                            ),
                            Gap(5.h),
                            Text(
                              S.current.enter_email,
                              style: CustomTextStyle.kTextStyleF12.copyWith(
                                color: AppColors.black60,
                              ),
                            ),
                            Gap(60.h),
                            Text(
                              S.current.email,
                              style: CustomTextStyle.kTextStyleF12,
                            ),
                            Gap(5.h),
                            CustomFormField(
                              ctrl: forgotPassCubit.emailCtrl,
                              preIcon: Image.asset(AppImages.appLogo),
                              label: S.current.email,
                              isObscure: false,
                              validator: (value) {
                                if (forgotPassCubit.emailCtrl.text.isEmpty) {
                                  return S.current.plz_enter_email;
                                } else if (!forgotPassCubit.emailCtrl.text
                                    .isEmail()) {
                                  return S.current.enter_valid_email;
                                } else {
                                  return null;
                                }
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  S.current.remember_pass,
                                  style: CustomTextStyle.kTextStyleF16.copyWith(
                                    color: AppColors.black60,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.pushNamed(loginPageRoute);
                                  },
                                  child: Text(
                                    S.current.login_now,
                                    style:
                                        CustomTextStyle.kTextStyleF16.copyWith(
                                      color: AppColors.black80,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        ConditionalBuilder(
                          condition: state is! Loading,
                          builder: (BuildContext context) {
                            return CustomBtn(
                              label: S.current.send_code,
                              onPressed: () {
                                context.pushNamed(resetPassPageRoute);
                                // if (formKey.currentState!.validate()) {
                                //   forgotPassCubit.userForgotPass(
                                //     ForgetPassEntity(
                                //       email: forgotPassCubit.emailCtrl.text,
                                //     ),
                                //   );
                                // }
                              },
                              fgColor: Colors.white,
                              isUpperCase: true,
                            );
                          },
                          fallback: (BuildContext context) {
                            return const Center(
                              child: CircularProgressIndicator(
                                color: AppColors.secondary,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
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
