import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/utils/app_images.dart';


class ProductsDetailsView extends StatelessWidget {
  const ProductsDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body:Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w,vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                "${AppImages.placeholder}600x350",
                fit: BoxFit.cover,
              ),
              Gap(10.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...List.generate(4,
                            (index) => Row(
                              children: [
                                Image.network(
                                  "${AppImages.placeholder}70",
                                  fit: BoxFit.cover,
                                ),
                                Gap(10.w),
                              ],
                            )
                    ),

                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
