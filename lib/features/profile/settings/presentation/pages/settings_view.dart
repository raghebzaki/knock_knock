import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/helpers/cache_helper.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../../main.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(S.current.settings,style: CustomTextStyle.kTextStyleF20,),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(20.h),
            Container(
              decoration: const BoxDecoration(
                border: BorderDirectional(
                  bottom: BorderSide(
                    color: AppColors.secondary,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                color: Colors.white,
              ),

              margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
              child: ListTile(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(24),
                        ),
                      ),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      builder: (BuildContext context) {
                        return Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 24.w, vertical: 48.h),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(S.current.change_language,
                                  textAlign: TextAlign.right,
                                  style: CustomTextStyle.kTextStyleF16.copyWith(
                                      color: AppColors.textColorSecondary)),
                              Gap(30.h),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    MyApp.setLocale(context, const Locale("en"));
                                  });

                                  CacheHelper.setAppLanguage('en');
                                  context.pop();
                                },
                                child: Row(
                                  children: [
                                    Text('English - EN',
                                        style: CustomTextStyle.kTextStyleF14
                                            .copyWith(
                                            color: CacheHelper.isEnglish()?AppColors.lightBlue:AppColors.textColorSecondary)),
                                    const Spacer(),
                                    CacheHelper.isEnglish()?Icon(
                                      Icons.check,
                                      size: 16.sp,
                                      color: AppColors.lightBlue,
                                    ):const SizedBox.shrink(),
                                  ],
                                ),
                              ),
                              Gap(20.h),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    MyApp.setLocale(context, const Locale("ar"));

                                  });
                                  CacheHelper.setAppLanguage('ar');
                                  context.pop();
                                },
                                child: Row(
                                  children: [
                                    Text('العربية - AR',
                                        style: CustomTextStyle.kTextStyleF14
                                            .copyWith(
                                            color: CacheHelper.isEnglish()?AppColors
                                                .textColorSecondary:AppColors.lightBlue)),
                                    const Spacer(),
                                    CacheHelper.isEnglish()?const SizedBox.shrink():Icon(
                                      Icons.check,
                                      size: 16.sp,
                                      color: AppColors.lightBlue,
                                    ),
                                    // Icon(Icons.check,size: 16.sp,color: AppColors.lightBlue,)
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                },
                title: Opacity(
                  opacity: 0.90,
                  child: Text(
                    S.of(context).language,
                    style: CustomTextStyle.kTextStyleF16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: AppColors.lightBlue,
                  size: 16.sp,
                ),
              ),
            ),
            Gap(10.h),
            Container(
              decoration: const BoxDecoration(
                border: BorderDirectional(
                  bottom: BorderSide(
                    color: AppColors.secondary,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
                color: Colors.white,
              ),

              margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
              child: ListTile(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (ctx) {
                      return AlertDialog(
                        insetPadding: const EdgeInsets.symmetric(
                            horizontal: Dimensions.p16,
                            vertical: Dimensions.p32),
                        title: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              MdiIcons.chevronRight,
                            ),
                            Text(
                              S.of(context).privacy_policy,
                              style: CustomTextStyle.kTextStyleF20,
                            )
                          ],
                        ),
                        content: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("privacy policy")
                          ],
                        ),
                        contentTextStyle: CustomTextStyle.kTextStyleF14,
                      );
                    },
                  );
                },
                title: Opacity(
                  opacity: 0.90,
                  child: Text(
                    S.of(context).termsAndConditions,
                    style: CustomTextStyle.kTextStyleF16,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: AppColors.lightBlue,
                  size: 16.sp,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
