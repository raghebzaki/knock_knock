import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/arguments.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../helpers/cache_helper.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class ProductItem extends StatelessWidget {
  final ProductEntity productEntity;
  const ProductItem({super.key, required this.productEntity});

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
                  AppConstants.imageUrl+productEntity.image!,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                  backgroundColor: AppColors.primary,
                  child: Icon(
                    MdiIcons.heartOutline,
                    color: AppColors.errorColor,
                  ),
                ).paddingAll(Dimensions.p8,),
              )
            ],
          ),
          Container(
            width: context.queryWidth.w,
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
                      CacheHelper.isEnglish()?productEntity.nameEn!:productEntity.nameAr!,
                      style: CustomTextStyle.kTextStyleF14,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          productEntity.discountPercent==0?productEntity.price!:productEntity.priceAfterDiscount!,
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Gap(8.w),
                        productEntity.discountPercent!=0?Text(
                          productEntity.discountPercent.toString(),
                          style: CustomTextStyle.kTextStyleF12,
                        ):const SizedBox.shrink(),
                      ],
                    ),
                  ],
                ),
                Gap(12.h),
                GestureDetector(
                  onTap: () {
                    context.pushNamed(productsDetailsPageRoute,arguments: ProductArgs(productEntity: productEntity));
                  },
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
