import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/shared/widgets/service_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
