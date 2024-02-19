import 'package:flutter/material.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({
    super.key,
  });

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  TimeOfDay currentTime = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        final TimeOfDay? startTime = await showTimePicker(
          context: context,
          initialTime: currentTime,
        );
        if (startTime != null && startTime != currentTime) {
          setState(() {
            currentTime = startTime;
          });
        }
      },
      child: Container(
        padding: const EdgeInsets.all(Dimensions.p16),
        clipBehavior: Clip.antiAlias,
        decoration: const ShapeDecoration(
          color: AppColors.secondary,
          shape: RoundedRectangleBorder(),
        ),
        child: Center(
          child: Text(
            currentTime.stringFormat(
                formatType: TimeFormatType.hoursMinutesPeriod),
            style: CustomTextStyle.kTextStyleF16.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
