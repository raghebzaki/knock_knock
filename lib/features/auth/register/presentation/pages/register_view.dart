import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/dependency_injection/di.dart' as di;
import 'package:knockknock/core/shared/widgets/custom_button.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/auth/register/domain/entities/register_entity.dart';
import 'package:knockknock/features/auth/register/presentation/manager/register_cubit.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:pinput/pinput.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool password = true;
  bool passwordConfirmation = true;
  bool isCustomer = true;
  RegisterEntity registerEntity = const RegisterEntity();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<RegisterCubit>(),
      child: BlocConsumer<RegisterCubit, RegisterState>(
        listener: (context, state) {
          state.maybeWhen(
            error: (errCode, err) {
              context.defaultSnackBar("Error Code: $errCode, $err");
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          RegisterCubit registerCubit = RegisterCubit.get(context);
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Gap(60.h),
                        Image.asset(
                          AppImages.appLogo,
                          height: 100.h,
                          width: 450.w,
                        ),
                        Gap(20.h),

                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.current.register,
                              style: CustomTextStyle.kTextStyleF24,
                            ),
                            Gap(20.h),
                            Row(
                              children: [
                                Expanded(
                                  child: CustomFormField(
                                    ctrl: registerCubit.firstNameCtrl,
                                    hint: S.current.firstName,
                                    isObscure: false,
                                    validator: (value) {
                                      if (registerCubit.firstNameCtrl.text.isEmpty) {
                                        return S.current.firstNameRequired;
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                                Gap(5.w),
                                Expanded(
                                  child: CustomFormField(
                                    ctrl: registerCubit.lastNameCtrl,
                                    hint: S.current.lastName,
                                    isObscure: false,
                                    validator: (value) {
                                      if (registerCubit.lastNameCtrl.text.isEmpty) {
                                        return S.current.lastNameRequired;
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                ),
                              ],
                            ),
                            Gap(10.h),
                            CustomFormField(
                              ctrl: registerCubit.phoneCtrl,
                              hint: S.current.phone_no,
                              isObscure: false,
                              validator: (value) {
                                if (registerCubit
                                    .phoneCtrl.text.isEmpty) {
                                  return S.current.phoneNumberRequired;
                                }  else {
                                  return null;
                                }
                              },
                            ),
                            Gap(10.h),
                            CustomFormField(
                              ctrl: registerCubit.passCtrl,
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
                                if (registerCubit.passCtrl.text.isEmpty) {
                                  return S.current.password_required;
                                } else if (registerCubit.passCtrl.length < 8) {
                                  return S.current.pass_short;
                                } else {
                                  return null;
                                }
                              },
                            ),
                            Gap(10.h),
                            CustomFormField(
                              ctrl: registerCubit.passConfirmCtrl,
                              hint: S.current.pass_confirm,
                              isObscure: passwordConfirmation,
                              sufIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    passwordConfirmation =
                                        !passwordConfirmation;
                                  });
                                },
                                child: passwordConfirmation
                                    ? Icon(MdiIcons.eye)
                                    : Icon(MdiIcons.eyeOff),
                              ),
                              validator: (value) {
                                if (registerCubit
                                    .passConfirmCtrl.text.isEmpty) {
                                  return S.current.pass_confrirm_required;
                                } else if (registerCubit.passConfirmCtrl.text !=
                                    registerCubit.passCtrl.text) {
                                  return S.current.pass_dont_match;
                                } else {
                                  return null;
                                }
                              },
                            ),
                            Gap(20.h),
                            ConditionalBuilder(
                                condition: state is! Loading,
                                builder: (BuildContext context) {
                                  return CustomBtn(
                                    label: S.current.register,
                                    onPressed: () async {
                                      context.pushNamed(verifyAccountPageRoute,arguments: VerifyAccountArgs(email: registerCubit.firstNameCtrl.text));
                                      // if (formKey.currentState!.validate()) {
                                      //   registerCubit.userRegister(
                                      //       RegisterEntity(
                                      //         userName: registerCubit
                                      //             .userNameCtrl.text,
                                      //         email:
                                      //             registerCubit.emailCtrl.text,
                                      //         pass: registerCubit.passCtrl.text,
                                      //         confirmPass: registerCubit
                                      //             .passConfirmCtrl.text,
                                      //         type: isCustomer
                                      //             ? 'customer'
                                      //             : 'designer',
                                      //       ),
                                      //       context);
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
                                  S.current.alreadyHaveAnAccount,
                                  style: CustomTextStyle.kTextStyleF16,
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.pushNamed(loginPageRoute);
                                  },
                                  child: Text(
                                    S.current.login,
                                    style: CustomTextStyle.kTextStyleF16w600,
                                  ),
                                ),
                              ],
                            )
                          ],
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
