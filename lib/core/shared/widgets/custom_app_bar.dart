import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CustomAppBar({
    super.key,
    required this.title,
  });

  @override
  Size get preferredSize => Size(double.infinity.w, 200.h);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
        preferredSize: Size.fromHeight(200.h), // here the desired height
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.sunSvg,
                    height: 25.h,
                    width: 25.h,
                  ),
                  Gap(5.w),
                  const Text("Good Morning"),
                ],
              ),
              Gap(8.h),
              AppBar(
                // centerTitle: true,
                backgroundColor: Colors.white,
                elevation: 0,
                leading: Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.pinSvg,
                      height: 32.h,
                      width: 25.h,
                    ),
                  ],
                ),
                title: Text(
                  title,
                  style: CustomTextStyle.kTextStyleF16,
                  // textAlign: TextAlign.center,
                ),
                actions: const [
                  CircleAvatar(
                    radius: Dimensions.r50,
                    backgroundColor: AppColors.secondary,
                  )
                ],
              ),
              Gap(20.h),
              Container(
                padding: const EdgeInsets.all(Dimensions.p12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                  borderRadius: BorderRadius.circular(
                    Dimensions.r12,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.magnify,
                      color: AppColors.secondary,
                    ),
                    Text(
                      "Search For",
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ).paddingAll(Dimensions.p24),
        ),
      ),
    );
  }
}
