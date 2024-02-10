import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pinput.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/login_cubit.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool password = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<LoginCubit>(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          LoginCubit loginCubit = LoginCubit.get(context);
          state.maybeWhen(
            success: (state) async {
              if (state!.status == 1) {
                context.defaultSnackBar(S.of(context).login_successful);
                var email =
                    CacheHelper.setData("email", loginCubit.emailCtrl.text);
                var pass =
                    CacheHelper.setData("pass", loginCubit.passCtrl.text);
                debugPrint("$email, $pass");
                  context.pushNamed(bottomNavBarPageRoute);
                // UpdateFcmTokenService.updateUserToken(UserData.id!);
              } else if (state.status == 0) {
                if (state.msg ==
                    "Active your account first verification code sent to your email !") {
                  // await resendCodeUseCase(email.ifEmpty());
                  loginCubit.resendCode(loginCubit.emailCtrl.text);
                  context.pushNamed(
                    verifyAccountPageRoute,
                    arguments:
                        VerifyAccountArgs(email: loginCubit.emailCtrl.text),
                  );
                }
                context.defaultSnackBar(state.msg.isNullOrEmpty());
              } else {
                context.defaultSnackBar(state.msg.isNullOrEmpty());
              }
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
          LoginCubit loginCubit = LoginCubit.get(context);
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Gap(80.h),
                            Image.asset(
                              AppImages.appLogo,
                              height: 100.h,
                              width: 450.w,
                            ),
                            Gap(5.h),

                          ],
                        ),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.current.login,
                              style: CustomTextStyle.kTextStyleF24,
                            ),
                            Gap(20.h),
                            CustomFormField(
                              ctrl: loginCubit.emailCtrl,
                              hint: S.current.phone_no,
                              isObscure: false,
                              validator: (value) {
                                if (loginCubit.emailCtrl.text.isEmpty) {
                                  return S.of(context).phoneNumberRequired;
                                }  else {
                                  return null;
                                }
                              },
                            ),
                            Gap(10.h),

                            CustomFormField(
                              ctrl: loginCubit.passCtrl,
                              hint: S.current.pass,
                              isObscure: password,
                              sufIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    password = !password;
                                  });
                                },
                                child: password
                                    ? Icon(MdiIcons.eye)
                                    : Icon(MdiIcons.eyeOff),
                              ),
                              validator: (value) {
                                if (loginCubit.passCtrl.text.isEmpty) {
                                  return S.of(context).password_required;
                                } else if (loginCubit.passCtrl.length < 8) {
                                  return S.of(context).pass_short;
                                } else {
                                  return null;
                                }
                              },
                            ),
                            Gap(15.h),
                          ],
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            onTap: () {
                              context.pushNamed(forgotPassPageRoute);
                            },
                            child: Text(
                              S.current.forgot_pass,
                              style: CustomTextStyle.kTextStyleF16,
                            ),
                          ),
                        ),
                        Gap(25.h),
                        ConditionalBuilder(
                            condition: state is! Loading,
                            builder: (BuildContext context) {
                              return CustomBtn(
                                label: S.current.login,
                                onPressed: () {
                                  context.pushNamed(homePageRoute);
                                  // if (formKey.currentState!.validate()) {
                                  //   loginCubit.userLogin(LoginEntity(
                                  //       userName: loginCubit.emailCtrl.text,
                                  //       pass: loginCubit.passCtrl.text,
                                  //     ),);
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
                            }),
                        Gap(15.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              S.current.do_not_have_account,
                              style: CustomTextStyle.kTextStyleF16,
                            ),
                            TextButton(
                              onPressed: () {
                                context.pushNamed(registerPageRoute);
                              },
                              child: Text(
                                S.current.register_now,
                                style: CustomTextStyle.kTextStyleF16w600,
                              ),
                            ),
                          ],
                        )
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
