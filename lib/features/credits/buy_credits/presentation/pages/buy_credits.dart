import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/widgets/custom_button_small.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../generated/l10n.dart';

class BuyCreditsView extends StatefulWidget {
  const BuyCreditsView({super.key});

  @override
  State<BuyCreditsView> createState() => _BuyCreditsViewState();
}

class _BuyCreditsViewState extends State<BuyCreditsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.secondary),
        title: Text(
          S.of(context).payLessGetMore,
          style: CustomTextStyle.kTextStyleF24,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Text(
                S.of(context).selectAPackageThatSuitsYouBestAndEarnUp,
                style: CustomTextStyle.kTextStyleF12,
                textAlign: TextAlign.center,
              ),
            ),
            const Divider(
              color: AppColors.secondary,
            ),
            Gap(20.h),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                  2,
                          (index) =>  Container(
                width: 300.w,
                padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 16.w),
                margin: CacheHelper.isEnglish()?EdgeInsets.only( left: 16.w):EdgeInsets.only( right: 16.w),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  color: AppColors.secondaryLight,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      S.of(context).basicPackage,
                      style: CustomTextStyle.kTextStyleF16w600,
                      textAlign: TextAlign.center,
                    ),
                    Gap(10.h),
                    Text(
                      "${S.of(context).Aed} 300",
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        color: AppColors.secondaryWithOpacity,
                        decoration: TextDecoration.lineThrough,
                        decorationColor: AppColors.greyColor,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(10.h),
                    Text(
                      "${S.of(context).Aed} 279",
                      style: CustomTextStyle.kTextStyleF16w600,
                      textAlign: TextAlign.center,
                    ),
                    Gap(10.h),
                    Text(
                      S.of(context).getAed300WorthOfKnockKnockCreditForPrice,
                      style: CustomTextStyle.kTextStyleF12,
                      textAlign: TextAlign.center,
                    ),
                    Gap(10.h),
                    Text(
                      S.of(context).earn8More,
                      style: CustomTextStyle.kTextStyleF12,
                      textAlign: TextAlign.center,
                    ),
                    Gap(10.h),
                    Text(
                      S.of(context).vaildFor30DaysOnAllHomeServices,
                      style: CustomTextStyle.kTextStyleF12.copyWith(color: AppColors.secondaryWithOpacity),
                      textAlign: TextAlign.center,
                    ),
                    Gap(10.h),
                    CustomBtnSmall(
                      label: S.of(context).buyNow,
                      onPressed: (){
                        context.pushNamed(paymentSummeryPageRoute);
                      },
                    )
                  ],
                ),
              ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
