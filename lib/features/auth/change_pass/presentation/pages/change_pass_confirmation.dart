import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';

class ChangePassConfirmationView extends StatelessWidget {
  const ChangePassConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(
            Dimensions.p16,
          ),
          child: Column(
            children: [
              Gap(20.h),
              Center(
                child: Image.asset(
                  AppImages.confirmationImg,
                  height: 250.h,
                  width: 250.h,
                ),
              ),
              Gap(15.h),
              Text(
                S.current.pass_change_success,
                style: CustomTextStyle.kTextStyleF24.copyWith(
                  color: AppColors.black80,
                ),
              ),
              Text(
                S.current.check_your_mail,
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  color: AppColors.black60,
                ),
              ),
              Gap(30.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    S.current.have_problem,
                    style: CustomTextStyle.kTextStyleF16.copyWith(
                      color: AppColors.black60,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      S.current.cs,
                      style: CustomTextStyle.kTextStyleF16.copyWith(
                        color: AppColors.black80,
                      ),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              CustomBtn(
                label: S.current.login,
                onPressed: () {
                  context.pushNamed(loginPageRoute);
                },
                fgColor: Colors.white,
                isUpperCase: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
