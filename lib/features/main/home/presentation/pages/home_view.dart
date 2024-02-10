import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';
import 'package:knockknock/core/shared/widgets/product_item.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/main/home/presentation/widgets/ads_item.dart';

import '../../../../../core/shared/widgets/service_item.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController adsCtrl = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bg,
      appBar: const CustomAppBar(title: "Abu Dhabi"),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(15.h),
              Container(
                width: context.queryWidth.w,
                padding: EdgeInsets.symmetric(
                  horizontal: Dimensions.p24.w,
                  vertical: Dimensions.p12.h,
                ),
                color: Colors.white,
                child: AdsItem(
                  adsCtrl: adsCtrl,
                ),
              ),
              Gap(15.h),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                ),
                child: AutoHeightGridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  builder: (ctx, index) {
                    return const ServiceItem();
                  },
                ),
              ),
              Gap(15.h),
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                ),
                child: AutoHeightGridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  builder: (ctx, index) {
                    return const ProductItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
