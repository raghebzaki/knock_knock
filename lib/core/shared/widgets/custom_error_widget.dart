import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../utils/app_colors.dart';
import '../../utils/dimensions.dart';

class CustomErrorWidget extends StatelessWidget {
  final String errorSummary;
  final String errorContext;
  final String errorMessage;

  const CustomErrorWidget({
    super.key,
    required this.errorSummary,
    required this.errorContext,
    required this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Dimensions.p50),
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(Dimensions.p16),
          decoration: BoxDecoration(
            color: AppColors.statusRedContainer,
            borderRadius: BorderRadius.circular(
              Dimensions.r25,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error,
                  color: AppColors.statusRed,
                  size: 60.0,
                ),
                Gap(10.h),
                Text(
                  'Error Occurred!',
                  style: TextStyle(
                    fontSize: Dimensions.f18,
                    fontWeight: FontWeight.bold,
                    color: AppColors.statusRed,
                  ),
                ),
                const Divider(color: Colors.grey),
                Text(
                  "Error Summary:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Dimensions.f16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.statusRed,
                  ),
                ),
                Text(
                  errorSummary,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Dimensions.f16,
                  ),
                ),
                const Divider(color: Colors.grey),
                Text(
                  "Error Context:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Dimensions.f16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.statusRed,
                  ),
                ),
                Text(
                  errorContext,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Dimensions.f16,
                  ),
                ),
                const Divider(color: Colors.grey),
                Text(
                  "Exception:",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Dimensions.f16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.statusRed,
                  ),
                ),
                Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Dimensions.f16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ErrorWidgetClass extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const ErrorWidgetClass({
    super.key,
    required this.errorDetails,
  });

  @override
  Widget build(BuildContext context) {
    return CustomErrorWidget(
      errorSummary: errorDetails.summary.toString(),
      errorContext: errorDetails.context.toString(),
      errorMessage: errorDetails.exceptionAsString(),
    );
  }
}
