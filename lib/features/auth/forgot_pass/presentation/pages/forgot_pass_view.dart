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
                  "${S.of(context).otpSentTo} ${forgotPassCubit.emailCtrl.value}",
                );
                context.pushNamed(
                  resetPassPageRoute,
                  arguments: ResetPasAedgs(
                    email: forgotPassCubit.emailCtrl.value.isNullOrEmpty(),
                  ),
                );
              } else {
                context.defaultSnackBar(S.of(context).wrongPhoneCheckAgain);
              }
            },
            error: (errCode, err) {
              context
                  .defaultSnackBar("${S.of(context).err_code}: $errCode, $err");
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
                            Gap(60.h),
                            Image.asset(
                              AppImages.appLogo,
                              height: 100.h,
                              width: 450.w,
                            ),
                            Gap(20.h),
                            Text(
                              S.current.ForgetPassword,
                              style: CustomTextStyle.kTextStyleF24,
                            ),
                            Gap(20.h),
                            StreamBuilder(
                                stream: forgotPassCubit.emailStream,
                                builder: (context, snapshot) {
                                  return CustomFormField(
                                    label: S.current.email,
                                    isObscure: false,
                                    onChange: (phone) {
                                      forgotPassCubit.validatePhone(phone);
                                    },
                                  );
                                }),
                          ],
                        ),
                        StreamBuilder(
                            stream: forgotPassCubit.validateForgotPassBtn,
                            builder: (context, snapshot) {
                              return ConditionalBuilder(
                                condition: state is! Loading,
                                builder: (BuildContext context) {
                                  return CustomBtn(
                                    label: S.current.sendCode,
                                    onPressed: snapshot.hasData
                                        ? () {
                                            context.pushNamed(
                                              resetPassPageRoute,
                                              arguments: ResetPasAedgs(
                                                email: forgotPassCubit
                                                    .emailCtrl.value,
                                              ),
                                            );
                                            // if (formKey.currentState!.validate()) {
                                            //   forgotPassCubit.userForgotPass(
                                            //     ForgetPassEntity(
                                            //       email: forgotPassCubit.emailCtrl.text,
                                            //     ),
                                            //   );
                                            // }
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
                                },
                              );
                            }),
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
