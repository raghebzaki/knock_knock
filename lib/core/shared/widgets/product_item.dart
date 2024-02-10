import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: Dimensions.p12),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimensions.r12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x26000000),
            blurRadius: 10,
            offset: Offset(2, 2),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                width: context.queryWidth.w,
                height: 140.h,
                child: Image.network(
                  "${AppImages.placeholder}1000",
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    MdiIcons.heart,
                    color: AppColors.errorColor,
                  ),
                ).paddingAll(Dimensions.p8,),
              )
            ],
          ),
          Container(
            width: context.queryWidth.w,
            height: 98.h,
            padding: EdgeInsets.symmetric(horizontal: Dimensions.p12.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'dasani',
                      style: CustomTextStyle.kTextStyleF14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "AED 5",
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(8.w),
                        Text(
                          '-30%',
                          style: CustomTextStyle.kTextStyleF12,
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(12.h),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: context.queryWidth.w,
                    height: 32.h,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      color: AppColors.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          Dimensions.r8,
                        ),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x26000000),
                          blurRadius: 10,
                          offset: Offset(2, 2),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Details',
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.kTextStyleF14.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
