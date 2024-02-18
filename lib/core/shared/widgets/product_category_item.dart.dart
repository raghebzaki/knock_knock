import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/arguments.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/main/home/domain/entities/products_category_entity.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class ProductCategoryItem extends StatelessWidget {
  final ProductsCategoryEntity productsCategoryEntity;
  const ProductCategoryItem({super.key, required this.productsCategoryEntity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(productsPageRoute,arguments: ProductsArgs(categoryId: productsCategoryEntity.id!));
      },
      child: Container(
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
          children: [
            SizedBox(
              width: context.queryWidth.w,
              height: 140.h,
              child: Image.network(
                AppConstants.imageUrl+productsCategoryEntity.image!,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              width: context.queryWidth.w,
              padding: EdgeInsets.symmetric(horizontal: Dimensions.p12.w),
              child: Text(
                CacheHelper.isEnglish()?productsCategoryEntity.nameEn!:productsCategoryEntity.nameAr!,
                style: CustomTextStyle.kTextStyleF14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
