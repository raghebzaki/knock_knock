import 'package:flutter/material.dart';

import '../../utils/dimensions.dart';


class StatusIndicator extends StatelessWidget {
  final Color? containerColor;
  final Color? textColor;
  final String? statusText;

  const StatusIndicator({
    super.key,
    this.containerColor,
    this.textColor,
    this.statusText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(
          Dimensions.r5,
        ),
      ),
      padding: const EdgeInsets.all(
        Dimensions.p5,
      ),
      child: Text(
        statusText!,
        style: TextStyle(
          color: textColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
