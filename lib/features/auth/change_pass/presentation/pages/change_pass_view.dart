import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../../domain/entities/change_pass_entity.dart';
import '../manager/change_pass_cubit.dart';

class ChangePassView extends StatefulWidget {
  final String email;

  const ChangePassView({super.key, required this.email});

  @override
  State<ChangePassView> createState() => _ChangePassViewState();
}

class _ChangePassViewState extends State<ChangePassView> {
  GlobalKey<FormState> formKey = GlobalKey();
  bool password = true;
  bool passwordConfirmation = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<ChangePassCubit>(),
      child: BlocConsumer<ChangePassCubit, ChangePassStates>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              if (state.status == 1) {
                context.defaultSnackBar(S.of(context).passwordChangedSuccessfully);
                context.pushNamed(loginPageRoute);
              } else {
                context.defaultSnackBar(S.of(context).failedToChangePassword);
              }
            },
            error: (errCode, err) {
              context.defaultSnackBar(
                  "${S.of(context).failedToChangePassword}: $errCode, $err");
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          ChangePassCubit changePassCubit = ChangePassCubit.get(context);
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
                          S.current.change_pass,
                          style: CustomTextStyle.kTextStyleF24,
                        ),
                        Gap(20.h),
                        StreamBuilder(
                            stream: changePassCubit.passStream,
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
                                      changePassCubit.validatePass(pass);
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
                            stream: changePassCubit.passConfirmStream,
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
                                      changePassCubit
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
                          stream: changePassCubit.validateChangePassBtnStream,
                          builder: (context, snapshot) {
                            return ConditionalBuilder(
                              condition: state is! Loading,
                              builder: (BuildContext context) {
                                return CustomBtn(
                                  label: S.current.change_pass,
                                  onPressed: snapshot.hasData ? () {
                                      changePassCubit.userChangePass(
                                        ChangePassEntity(
                                          email: widget.email,
                                          pass: changePassCubit.passCtrl.value,
                                          confirmPass:
                                              changePassCubit.passConfirmCtrl.value,
                                        ),
                                      );
                                  } : null,
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
                          }
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
