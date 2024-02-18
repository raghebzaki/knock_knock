import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/main/home/domain/entities/carousel_entity.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';

class AdsItem extends StatelessWidget {
  const AdsItem({
    super.key,
    required this.adsCtrl, required this.carouselList,
  });

  final List<CarouselEntity> carouselList;
  final PageController adsCtrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          clipBehavior: Clip.antiAlias,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Dimensions.p12),
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
          child: Stack(
            children: [
              Container(
                width: context.queryWidth * 0.8.w,
                height: 165.h,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(AppConstants.imageUrl+carouselList[0].image!),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Dimensions.r12),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      carouselList[0].titleEn!,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ).paddingAll(
                  Dimensions.p8,
                ),
              ),
              // Align(
              //   alignment: Alignment.topRight,
              //   child: Container(
              //     width: 60.w,
              //     height: 48.h,
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: NetworkImage(
              //             "${AppImages.placeholder}100"),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //   ).paddingAll(
              //     Dimensions.p8,
              //   ),
              // ),
            ],
          ),
        ),
        Gap(12.h),
        SmoothPageIndicator(
          controller: adsCtrl,
          count: 3,
          effect: const ExpandingDotsEffect(
            activeDotColor: AppColors.secondary,
            dotColor: AppColors.secondary,
          ),
        ),
      ],
    );
  }
}
