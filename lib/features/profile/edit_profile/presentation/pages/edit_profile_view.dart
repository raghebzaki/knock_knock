import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/widgets/custom_button_small.dart';
import 'package:knockknock/core/shared/widgets/custom_form_field.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../../core/shared/models/user_data_model.dart';
import '../../../../../../generated/l10n.dart';
import '../../domain/entities/edit_profile_entity.dart';
import '../manager/edit_profile_cubit.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  TextEditingController nameCtrl = TextEditingController();
  TextEditingController emailCtrl = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<EditProfileCubit>(),
      child: BlocConsumer<EditProfileCubit, EditProfileState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              context.defaultSnackBar(S.of(context).accountUpdatedSuccessfully);
            },
            deleteSuccess: (state) {
              context.defaultSnackBar(S.of(context).accountDeletedSuccessfully);
              context.pushNamed(loginPageRoute);
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          EditProfileCubit editProfileCubit = EditProfileCubit.get(context);
          return Scaffold(
            appBar: AppBar(
              title: Text(S.current.profile),
            ),
            backgroundColor: AppColors.primary,
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 10.h),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Container(
                        width: 80.w,
                        height: 80.w,
                        decoration: const ShapeDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                    "https://via.placeholder.com/73x73"),
                            fit: BoxFit.cover,
                          ),
                          shape: OvalBorder(),
                        ),
                      ),
                    ),
                    Gap(20.h),

                    CustomFormField(
                      hint: S.current.firstName,
                      ctrl: nameCtrl,
                    ),
                    Gap(10.h),
                    CustomFormField(
                      hint: S.current.lastName,
                      ctrl: nameCtrl,
                    ),
                    Gap(10.h),
                    CustomFormField(
                      hint: S.current.phone,
                      ctrl: emailCtrl,
                    ),
                    Gap(10.h),
                    CustomFormField(
                      hint: '**** **** ****',
                      ctrl: password,
                      isObscure: true,
                    ),
                    Gap(10.h),
                    Row(
                      children: [
                        Icon(
                          Icons.delete_outlined,
                          color: Colors.red[300],
                          size: 24.sp,
                        ),
                        Gap(10.w),
                        TextButton(
                          onPressed: () {
                            editProfileCubit.deleteAccount(
                              EditProfileEntity(
                                userId: UserData.id,
                              ),
                            );
                          },
                          child: Text(
                            S.of(context).deleteAccount,
                            style: CustomTextStyle.kTextStyleF16w600
                                .copyWith(color: Colors.red[300]),
                          ),
                        ),
                      ],
                    ),
                    // const Spacer(),
                    CustomBtnSmall(
                      label:S.of(context).updateAccount,
                      onPressed: () {
                        editProfileCubit.editProfile(
                          EditProfileEntity(
                              userId: UserData.id,
                              name: nameCtrl.text,
                              email: emailCtrl.text),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
