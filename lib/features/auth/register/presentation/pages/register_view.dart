import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
                        Text(
                          S.current.register,
                          style: CustomTextStyle.kTextStyleF24,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.current.full_name,
                              style: CustomTextStyle.kTextStyleF12,
                            ),
                            Gap(5.h),
                            CustomFormField(
                              ctrl: registerCubit.userNameCtrl,
                              preIcon: Image.asset(AppImages.profileImg),
                              hint: S.current.full_name,
                              isObscure: false,
                              validator: (value) {
                                if (registerCubit.userNameCtrl.text.isEmpty) {
                                  return S.current.user_name_required;
                                } else {
                                  return null;
                                }
                              },
                            ),
                            Gap(10.h),
                            Text(
                              S.current.email,
                              style: CustomTextStyle.kTextStyleF12,
                            ),
                            Gap(5.h),
                            CustomFormField(
                              ctrl: registerCubit.emailCtrl,
                              preIcon: Image.asset(AppImages.emailImg),
                              hint: S.current.email,
                              isObscure: false,
                              validator: (value) {
                                return registerCubit.emailValid;
                              },
                            ),
                            Gap(10.h),
                            Text(
                              S.current.pass,
                              style: CustomTextStyle.kTextStyleF12,
                            ),
                            Gap(5.h),
                            CustomFormField(
                              ctrl: registerCubit.passCtrl,
                              preIcon: Image.asset(AppImages.lockImg),
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
                            Text(
                              S.current.pass_confirm,
                              style: CustomTextStyle.kTextStyleF12,
                            ),
                            Gap(5.h),
                            CustomFormField(
                              ctrl: registerCubit.passConfirmCtrl,
                              preIcon: Image.asset(AppImages.lockImg),
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
                            Gap(15.h),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isCustomer = true;
                                      });
                                    },
                                    child: Container(
                                      padding:
                                          const EdgeInsets.all(Dimensions.p8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: isCustomer
                                              ? AppColors.secondary
                                              : AppColors.textColorGrey,
                                          width: 2,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.r8,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              S.current.buyer,
                                              style: CustomTextStyle
                                                  .kTextStyleF16
                                                  .copyWith(
                                                color: AppColors.black60,
                                              ),
                                            ),
                                          ),
                                          Gap(20.h),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: SvgPicture.asset(
                                              AppImages.buyerSvg,
                                              height: 72.h,
                                              width: 70.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Gap(10.w),
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isCustomer = false;
                                      });
                                    },
                                    child: Container(
                                      padding:
                                          const EdgeInsets.all(Dimensions.p8),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: isCustomer
                                              ? AppColors.textColorGrey
                                              : AppColors.secondary,
                                          width: 2,
                                          style: BorderStyle.solid,
                                        ),
                                        borderRadius: BorderRadius.circular(
                                          Dimensions.r8,
                                        ),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              S.current.seller,
                                              style: CustomTextStyle
                                                  .kTextStyleF16
                                                  .copyWith(
                                                color: AppColors.black60,
                                              ),
                                            ),
                                          ),
                                          Gap(20.h),
                                          Align(
                                            alignment: Alignment.bottomRight,
                                            child: Image.asset(
                                              AppImages.sellerImg,
                                              height: 72.h,
                                              width: 70.w,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Gap(20.h),
                            ConditionalBuilder(
                                condition: state is! Loading,
                                builder: (BuildContext context) {
                                  return CustomBtn(
                                    label: S.current.register,
                                    onPressed: () async {
                                      context.pushNamed(verifyAccountPageRoute,arguments: VerifyAccountArgs(email: registerCubit.emailCtrl.text));
                                      registerCubit.validateEmail(
                                          registerCubit.emailCtrl.text);
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
