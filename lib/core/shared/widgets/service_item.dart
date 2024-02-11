import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(servicesDetailsPageRoute);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: context.queryWidth.w,
            height: 104.h,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage("${AppImages.placeholder}/500"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.r12),
              ),
              shadows:  const [
                BoxShadow(
                  color: AppColors.primary,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
          Gap(2.h),
          Text(
            'Air conditioning \nmaintenance contracts',
            textAlign: TextAlign.center,
            style: CustomTextStyle.kTextStyleF12Black,
          ),
        ],
      ),
    );

    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     ClipRRect(
    //       borderRadius: BorderRadius.circular(
    //         Dimensions.r15,
    //       ),
    //       child: Image.network(
    //         "${AppImages.placeholder}152x104",
    //       ),
    //     ),
    //     Text(
    //       "Hire a cleaning\n worker",
    //       style: CustomTextStyle.kTextStyleF12,
    //       textAlign: TextAlign.center,
    //     ),
    //   ],
    // );
  }
}
