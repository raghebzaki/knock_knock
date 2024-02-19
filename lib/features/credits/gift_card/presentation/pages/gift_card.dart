import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/widgets/custom_button_small.dart';
import 'package:knockknock/core/shared/widgets/custom_form_field.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';

class GiftCardView extends StatefulWidget {
  const GiftCardView({super.key});

  @override
  State<GiftCardView> createState() => _GiftCardViewState();
}

class _GiftCardViewState extends State<GiftCardView> {
  int isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.primary),
        title: Text(
          S.of(context).sendAGiftCard,
          style: CustomTextStyle.kTextStyleF24White,
        ),
        backgroundColor: AppColors.secondary,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: context.width,
              padding: EdgeInsets.all(16.sp),
              color: AppColors.secondary,
              child: Container(
                width: context.width,
                padding: EdgeInsets.all(
                  16.0.sp,
                ),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.26),
                        blurRadius: 10,
                        offset: const Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(20))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).thePerfectGiftCardForYourLovedOne,
                            style: CustomTextStyle.kTextStyleF14w600,
                          ),
                          Gap(10.h),
                          Text(
                            S.of(context).treatThemToTheirFavoriteHomeService,
                            style: CustomTextStyle.kTextStyleF12,
                          ),
                        ],
                      ),
                    ),
                    Gap(10.w),
                    Image.asset(
                      AppImages.giftBigImg,
                      width: 100.w,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0.sp),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).selectGiftAmount,
                    style: CustomTextStyle.kTextStyleF16,
                  ),
                   CustomFormField(
                    label: S.of(context).enterAmount,
                  ),
                  Gap(10.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ...List.generate(
                            5,
                            (index) => Row(
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isSelected = index;
                                        });
                                      },
                                      child: Container(
                                        padding: EdgeInsets.all(10.sp),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: BoxDecoration(
                                          color: isSelected == index
                                              ? AppColors.secondary
                                              : AppColors.secondaryWithOpacity,
                                          shape: BoxShape.rectangle,
                                          borderRadius: BorderRadius.circular(12),
                                        ),
                                        child: Text(
                                          "${S.of(context).Aed} ${300 * index + 300}",
                                          style: CustomTextStyle.kTextStyleF16
                                              .copyWith(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    Gap(10.w),
                                  ],
                                )),
                      ],
                    ),
                  ),
                  Gap(10.h),
                  Container(
                    padding: const EdgeInsets.all(Dimensions.p10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            S.of(context).yourMessageOptional,
                            style: CustomTextStyle.kTextStyleF14Secondary,
                          ),
                        ),
                        Text(
                          S.of(context).add,
                          style: CustomTextStyle.kTextStyleF16w600,
                        ),
                      ],
                    ),
                  ),
                  Gap(10.h),
                  Container(
                    padding: const EdgeInsets.all(Dimensions.p10),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            S.of(context).accountNumberOfThePersonYouLove,
                            style: CustomTextStyle.kTextStyleF14Secondary,
                          ),
                        ),
                        Text(
                          S.of(context).add,
                          style: CustomTextStyle.kTextStyleF16w600,
                        ),
                      ],
                    ),
                  ),
                  Gap(20.h),
                  CustomBtnSmall(
                    label: S.of(context).next,
                    onPressed: (){
                      context.pushNamed(giftPaymentSummeryPageRoute);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
