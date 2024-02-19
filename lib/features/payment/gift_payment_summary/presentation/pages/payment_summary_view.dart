import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_constants.dart';

class PaymentSummaryView extends StatefulWidget {




  const PaymentSummaryView({super.key,});

  @override
  State<PaymentSummaryView> createState() => _PaymentSummaryViewState();
}

class _PaymentSummaryViewState extends State<PaymentSummaryView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
          title:  Text(S.of(context).checkout,style: CustomTextStyle.kTextStyleF22Black,)),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(Dimensions.p16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          S.of(context).paymentMethod,
                          style: CustomTextStyle.kTextStyleF16Black,
                        ),
                        const Spacer(),
                        Text(
                            S.of(context).change,
                            style: CustomTextStyle.kTextStyleF16
                        ),
                      ],
                    ),
                    Gap(10.h),
                    Image.asset(AppImages.cardImg,width: context.width,),
                    Gap(10.h),
                    Column(
                      children: [
                         CustomFormField(
                          hint: S.of(context).cardHolderName,
                        ),
                         CustomFormField(
                          hint:S.of(context).cardNumber,
                        ),
                        Row(
                          children: [
                             Flexible(
                              child: CustomFormField(
                                hint: S.of(context).cardDate,
                              ),
                            ),
                            Gap(5.w),
                             Flexible(
                              child: CustomFormField(
                                hint:S.of(context).cvv,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Gap(10.h),
                    Text(
                      S.of(context).addVoucherCode,
                      style: CustomTextStyle.kTextStyleF16Black,
                    ),
                    Gap(10.h),
                    Container(
                      width: context.width,
                      padding: EdgeInsets.all(20.sp),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.secondary,
                          ),
                          color: AppColors.primary,
                          borderRadius: BorderRadius.all(Radius.circular(12.sp))
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).voucherCode,
                            style: CustomTextStyle.kTextStyleF16BlackW300,
                          ),
                          Gap(15.h),
                          SizedBox(
                            // width: context.width/3,
                            child: GestureDetector(
                              child: Container(
                                padding: EdgeInsets.symmetric(horizontal: 16.sp,vertical: 2.sp),
                                decoration:  BoxDecoration(
                                  color: AppColors.secondary,
                                  borderRadius: BorderRadius.circular(
                                    12,
                                  ),
                                ),
                                child: Text(S.of(context).add,style: CustomTextStyle.kTextStyleF16White,),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const Gap(20),
                    Container(
                      width: context.width,
                      padding: EdgeInsets.all(20.sp),
                      decoration: BoxDecoration(
                          color: AppColors.bg,
                          borderRadius: BorderRadius.all(Radius.circular(12.sp))
                      ),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            S.of(context).paymentSummary,
                            style: CustomTextStyle.kTextStyleF16Black,
                          ),

                          Gap(15.h),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                S.current.subTotal,
                                style: CustomTextStyle.kTextStyleF16BlackW300
                              ),
                              const Spacer(),
                              Text(
                                "100 ${S.current.Aed}",
                                style: CustomTextStyle.kTextStyleF16BlackW300
                              ),
                            ],
                          ),
                          Gap(15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                S.current.deliveryFee,
                                style: CustomTextStyle.kTextStyleF16BlackW300
                              ),
                              const Spacer(),
                              Text(
                                '${AppConstants.deliveryFee} ${S.current.Aed}',
                                style: CustomTextStyle.kTextStyleF16BlackW300
                              ),
                            ],
                          ),
                          Gap(15.h),
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                S.current.total,
                                style: CustomTextStyle.kTextStyleF16BlackW300
                                    .copyWith(color: AppColors.textColor),
                              ),
                              const Spacer(),
                              Text(
                                "130 ${S.current.Aed}",
                                style: CustomTextStyle.kTextStyleF16BlackW300
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Gap(100.h),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                child: CustomBtn(
                  label: S.of(context).confirmPayment,
                  onPressed: () async {
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
