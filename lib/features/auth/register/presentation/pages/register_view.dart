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

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/router/router.dart';
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
            body: SafeArea(
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
                                child: StreamBuilder(
                                    stream: registerCubit.firstNameSteam,
                                    builder: (context, snapshot) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomFormField(
                                            hint: S.current.firstName,
                                            isObscure: false,
                                            onChange: (firstName) {
                                              registerCubit.validateFirstName(
                                                  firstName);
                                            },
                                          ),
                                          snapshot.hasError
                                              ? Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    snapshot.error.toString(),
                                                    style: const TextStyle(
                                                      color:
                                                          AppColors.errorColor,
                                                    ),
                                                  ),
                                                )
                                              : Gap(5.h),
                                        ],
                                      );
                                    }),
                              ),
                              Gap(5.w),
                              Expanded(
                                child: StreamBuilder(
                                    stream: registerCubit.lastNameStream,
                                    builder: (context, snapshot) {
                                      return Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomFormField(
                                            hint: S.current.lastName,
                                            isObscure: false,
                                            onChange: (lastName) {
                                              registerCubit
                                                  .validateLastName(lastName);
                                            },
                                          ),
                                          snapshot.hasError
                                              ? Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                    snapshot.error.toString(),
                                                    style: const TextStyle(
                                                      color:
                                                          AppColors.errorColor,
                                                    ),
                                                  ),
                                                )
                                              : Gap(5.h),
                                        ],
                                      );
                                    }),
                              ),
                            ],
                          ),
                          Gap(10.h),
                          StreamBuilder(
                              stream: registerCubit.emailStream,
                              builder: (context, snapshot) {
                                return Column(
                                  children: [
                                    CustomFormField(
                                      hint: S.current.email,
                                      isObscure: false,
                                      onChange: (email) {
                                        registerCubit.validateEmail(email);
                                      },
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
                          Gap(10.h),
                          StreamBuilder(
                              stream: registerCubit.phoneStream,
                              builder: (context, snapshot) {
                                return Column(
                                  children: [
                                    CustomFormField(
                                      hint: S.current.phoneNumber,
                                      isObscure: false,
                                      onChange: (phone) {
                                        registerCubit.validatePhone(phone);
                                      },
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
                          Gap(10.h),
                          StreamBuilder(
                              stream: registerCubit.passStream,
                              builder: (context, snapshot) {
                                return Column(
                                  children: [
                                    CustomFormField(
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
                                      onChange: (pass) {
                                        registerCubit.validatePass(pass);
                                      },
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
                          Gap(10.h),
                          StreamBuilder(
                              stream: registerCubit.passConfirmStream,
                              builder: (context, snapshot) {
                                return Column(
                                  children: [
                                    CustomFormField(
                                      hint: S.current.passConfirm,
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
                                      onChange: (passConfirm) {
                                        registerCubit
                                            .validatePassConfirm(passConfirm);
                                      },
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
                          Gap(20.h),
                          StreamBuilder(
                              stream: registerCubit.registerBtnValidStream,
                              builder: (context, snapshot) {
                                return ConditionalBuilder(
                                    condition: state is! Loading,
                                    builder: (BuildContext context) {
                                      return CustomBtn(
                                        label: S.current.register,
                                        onPressed: snapshot.hasData
                                            ? () async {
                                                  registerCubit.userRegister(
                                                      RegisterEntity(
                                                        firstName: registerCubit.firstNameCtrl.value,
                                                        lastName: registerCubit.lastNameCtrl.value,
                                                        email: registerCubit.emailCtrl.value,
                                                        phone: registerCubit.phoneCtrl.value,
                                                        pass: registerCubit.passCtrl.value,
                                                        confirmPass: registerCubit.passConfirmCtrl.value,

                                                      ), context);
                                              }
                                            : null,
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
                                    });
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
          );
        },
      ),
    );
  }
}
