import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/shared/widgets/custom_button.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../domain/entities/contact_us_entity.dart';
import '../manager/contact_us_cubit.dart';

class ContactUsView extends StatefulWidget {
  const ContactUsView({super.key});

  @override
  State<ContactUsView> createState() => _ContactUsViewState();
}

class _ContactUsViewState extends State<ContactUsView> {
  TextEditingController msgCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<ContactUsCubit>(),
      child: BlocConsumer<ContactUsCubit, ContactUsState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              context.defaultSnackBar(S.of(context).yourMessageSentSuccessfully);
              msgCtrl.clear();
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          ContactUsCubit contactUsCubit = ContactUsCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              title: Text(S.current.contactUs,style: CustomTextStyle.kTextStyleF20,),
            ),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(20.h),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: Dimensions.m16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100.w,
                          height: 100.w,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(AppImages.appLogo),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              S.current.email,
                              style: CustomTextStyle.kTextStyleF12.copyWith(
                                  color: AppColors.textColorSecondary),
                            ),
                            Gap(5.h),
                            Text(
                              'support@foryou.app',
                              style: CustomTextStyle.kTextStyleF14.copyWith(
                                  color: AppColors.textColorSecondary),
                            ),
                            Gap(10.h),
                            Text(
                              S.current.phone,
                              style: CustomTextStyle.kTextStyleF12.copyWith(
                                  color: AppColors.textColorSecondary),
                            ),
                            Gap(5.h),
                            Text(
                              '+966 59 333 4444',
                              style: CustomTextStyle.kTextStyleF14.copyWith(
                                  color: AppColors.textColorSecondary),
                            ),
                            Gap(10.h),
                            Text(
                              S.current.address,
                              style: CustomTextStyle.kTextStyleF12.copyWith(
                                  color: AppColors.textColorSecondary),
                            ),
                            Gap(5.h),
                            Text(
                              '477,الفيصلية\n,المملكة العربية السعودية',
                              style: CustomTextStyle.kTextStyleF14.copyWith(
                                  color: AppColors.textColorSecondary),
                              textAlign: TextAlign.center,
                            ),
                            Gap(10.h),
                          ],
                        )
                      ],
                    ),
                  ),
                  Gap(20.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                    child: Text(
                      S.current.message,
                      style: CustomTextStyle.kTextStyleF16
                          .copyWith(color: AppColors.textColorSecondary),
                    ),
                  ),
                  Gap(10.h),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: Dimensions.p16.w),
                    child: TextFormField(
                      controller: msgCtrl,
                      maxLines: null,
                      minLines: 5,
                      decoration: InputDecoration(
                        hintText: S.of(context).yourMessage,
                        isDense: true,
                        counter: const Offstage(),
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: Dimensions.p10.w,
                          vertical: Dimensions.p10.h,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(
                            Dimensions.r5,
                          ),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Colors.white,
                          ),
                        ),
                        labelStyle: const TextStyle(
                          color: AppColors.secondary,
                        ),
                        hintStyle: CustomTextStyle.kTextStyleF14,
                      ),
                    ),
                  ),
                  CustomBtn(
                    label: S.current.send,
                    onPressed: () {
                      contactUsCubit.sendMessage(
                        ContactUsEntity(
                          message: msgCtrl.text,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
