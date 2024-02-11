import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';

import '../../utils/app_colors.dart';

class TimeWidget extends StatelessWidget {
  final bool isSelected;
  const TimeWidget({super.key, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.w,
      clipBehavior: Clip.antiAlias,
      decoration:  ShapeDecoration(
        color: isSelected?AppColors.secondary:AppColors.secondaryWithOpacity,
        shape: const RoundedRectangleBorder(),
      ),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Text("9:00 AM",style: CustomTextStyle.kTextStyleF16.copyWith(color: Colors.white),),
         Text("1:00 PM",style: CustomTextStyle.kTextStyleF16.copyWith(color: Colors.white),)
        ],
      ),
    );
  }
}
