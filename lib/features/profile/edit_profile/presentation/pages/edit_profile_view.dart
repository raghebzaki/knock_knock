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
import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/edit_profile_entity.dart';
import '../manager/edit_profile_cubit.dart';

class EditProfileView extends StatefulWidget {
  const EditProfileView({super.key});

  @override
  State<EditProfileView> createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void initState() {
    super.initState();
    firstNameCtrl = TextEditingController(text: UserData.firstName);
    lastNameCtrl = TextEditingController(text: UserData.lastName);
    phoneCtrl = TextEditingController(text: UserData.phone);
  }
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
              backgroundColor: AppColors.primary,
              title: Text(S.current.profile,style: CustomTextStyle.kTextStyleF20,),
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
                        decoration:  ShapeDecoration(
                          image: DecorationImage(
                            image: CachedNetworkImageProvider(
                                AppConstants.imageUrl+UserData.avatar!),
                            fit: BoxFit.cover,
                          ),
                          shape: const OvalBorder(),
                        ),
                      ),
                    ),
                    Gap(20.h),

                    CustomFormField(
                      hint: S.current.firstName,
                      ctrl: firstNameCtrl,
                    ),
                    Gap(10.h),
                    CustomFormField(
                      hint: S.current.lastName,
                      ctrl: lastNameCtrl,
                    ),
                    Gap(10.h),
                    CustomFormField(
                      hint: S.current.phone,
                      ctrl: phoneCtrl,
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
                              firstName: firstNameCtrl.text,
                              lastName: lastNameCtrl.text,
                              phone: phoneCtrl.text,
                              email: UserData.email
                          ),
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
