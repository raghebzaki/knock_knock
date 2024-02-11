import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:badges/badges.dart' as badges;

import '../../../config/themes/app_text_styles.dart';
import '../../../generated/l10n.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {

  const CustomAppBar({
    super.key,
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
                   Text(S.current.goodMorning),
                ],
              ),
              Gap(8.h),
              AppBar(

                titleSpacing: 0,
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                title:Row(
                  children: [
                    SvgPicture.asset(
                      AppImages.pinSvg,
                      height: 32.h,
                      width: 25.h,
                    ),
                    Gap(5.w),
                    Text(
                      "Abu Dhabi",
                      style: CustomTextStyle.kTextStyleF16,
                      // textAlign: TextAlign.center,
                    ),
                  ],
                ),
                centerTitle: false,
                actions:  [
                  CircleAvatar(
                    radius: 50.sp,
                    backgroundColor: AppColors.secondary,
                    child: badges.Badge(
                      badgeContent: Text('3',style: CustomTextStyle.kTextStyleF14,),
                      child: const Icon(Icons.shopping_cart,color: Colors.white,size: 40,),
                    ),
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
                      S.of(context).searchFor,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ).paddingSymmetric(horizontal: Dimensions.p24,vertical: Dimensions.p10),
        ),
      ),
    );
  }
}
