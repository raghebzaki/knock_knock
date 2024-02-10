import 'package:flutter/material.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';

import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class ServiceItem extends StatelessWidget {
  const ServiceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(
            Dimensions.r15,
          ),
          child: Image.network(
            "${AppImages.placeholder}152x104",
          ),
        ),
        Text(
          "Hire a cleaning\n worker",
          style: CustomTextStyle.kTextStyleF12,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
