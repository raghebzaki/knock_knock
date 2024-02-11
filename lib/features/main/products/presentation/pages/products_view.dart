import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';
import 'package:knockknock/core/shared/widgets/product_item.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Gap(15.h),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.primary,
              ),
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 12.0.w,vertical: 10.h),
                    child: Row(
                      children: [
                        Text(S.current.products,style: CustomTextStyle.kTextStyleF20Black,),
                      ],
                    ),
                  ),
                  AutoHeightGridView(
                    crossAxisSpacing: 10.w,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 8,
                    builder: (ctx, index) {
                      return const ProductItem();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
