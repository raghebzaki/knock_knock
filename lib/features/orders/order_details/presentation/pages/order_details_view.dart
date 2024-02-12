import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/utils/app_images.dart';
import 'package:knockknock/core/utils/dimensions.dart';
import 'package:knockknock/core/utils/extensions.dart';
import '../../../../../../core/shared/entities/order_entity.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../generated/l10n.dart';

class OrderDetailsView extends StatefulWidget {
  final OrderEntity orderDetails;

  const OrderDetailsView({super.key, required this.orderDetails});

  @override
  State<OrderDetailsView> createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(title: Text("order number #${widget.orderDetails.orderNumber}")),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(
                Dimensions.p16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gap(25.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "arriving to",
                        style: CustomTextStyle.kTextStyleF16,
                      ),
                    ],
                  ),
                  Gap(20.h),
                  Text(
                    "S.of(context).executed_request",
                    style: CustomTextStyle.kTextStyleF16,
                  ),
                  Gap(15.h),
                  ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 2,
                      itemBuilder: (ctx, index) {
                        return Container(
                          height: 80.h,
                          width: 80.w,
                          padding: const EdgeInsets.all(Dimensions.p8),
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                BorderRadius.circular(Dimensions.r5),
                                child: Image.asset(
                                  AppImages.appLogo,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(Dimensions.p8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Intl.getCurrentLocale() == "en"
                                        ? Text(
                                        "${widget.orderDetails.date}")
                                        : Text(
                                        "${widget.orderDetails.date}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      }
                      )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
                width: context.queryWidth.w,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      Dimensions.p25,
                    ),
                    topRight: Radius.circular(
                      Dimensions.p25,
                    ),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "order number",
                          style: CustomTextStyle.kTextStyleF14,
                        ),
                        Text("#${widget.orderDetails.orderNumber}",
                            style: CustomTextStyle.kTextStyleF14),
                      ],
                    ),
                    Gap(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "total",
                          style: CustomTextStyle.kTextStyleF14,
                        ),
                        Text(
                            "${widget.orderDetails.totalPrice} ${S.current.Aed}",
                            style: CustomTextStyle.kTextStyleF14),
                      ],
                    ),
                    Gap(15.h),
                    const Divider(
                      thickness: 2,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "sub total",
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            color: AppColors.textColorGrey,
                          ),
                        ),
                        Text(
                          "${widget.orderDetails.price} ${S.current.Aed}",
                          style: CustomTextStyle.kTextStyleF14,
                        ),
                      ],
                    ),
                    Gap(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "delivery",
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            color: AppColors.textColorGrey,
                          ),
                        ),
                        Text("40 ${S.current.Aed}",
                            style: CustomTextStyle.kTextStyleF14),
                      ],
                    ),
                    Gap(15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "tax",
                          style: CustomTextStyle.kTextStyleF14.copyWith(
                            color: AppColors.textColorGrey,
                          ),
                        ),
                        Text("${widget.orderDetails.tax} ${S.current.Aed}",
                            style: CustomTextStyle.kTextStyleF14),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
