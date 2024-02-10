import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
            shadows: const [
              BoxShadow(
                color: Color(0x26000000),
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
          style: CustomTextStyle.kTextStyleF12.copyWith(
            color: Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
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
