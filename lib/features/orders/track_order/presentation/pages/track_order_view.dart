import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../../core/shared/entities/order_entity.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/router/router.dart';
import '../../domain/entities/cancel_order_entity.dart';
import '../manager/track_order_cubit.dart';

class TrackOrderView extends StatefulWidget {
  final OrderEntity orderDetails;

  const TrackOrderView({
    super.key,
    required this.orderDetails,
  });

  @override
  State<TrackOrderView> createState() => _TrackOrderViewState();
}

class _TrackOrderViewState extends State<TrackOrderView> {
  var time = TimeOfDay.now();
  var date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.di<TrackOrderCubit>(),
        ),
      ],
      child: BlocConsumer<TrackOrderCubit, TrackOrderStates>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              context.pushNamed(myOrdersPageRoute);
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          TrackOrderCubit trackOrderCubit = TrackOrderCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppBar(
              title: Text(
                "${S.of(context).orderNumber} ${widget.orderDetails.orderNumber}",
                style: CustomTextStyle.kTextStyleF16.copyWith(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              centerTitle: true,
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(
                  Dimensions.p16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    MaxGap(35.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              S.of(context).estimatedTimeOfArrivalEta,
                              style: CustomTextStyle.kTextStyleF12
                                  .copyWith(color: AppColors.textColorGrey),
                            ),
                            Text(
                              "",
                              style: CustomTextStyle.kTextStyleF16,
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                                context: context,
                                builder: (ctx) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: Dimensions.p16,
                                        vertical: Dimensions.p25),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          S.of(context).cancelAlert,
                                          style: CustomTextStyle.kTextStyleF16,
                                        ),
                                        Gap(24.h),
                                        GestureDetector(
                                          onTap: () {
                                            trackOrderCubit.cancelOrder(
                                              const CancelOrderEntity(
                                                orderId: 1,
                                              ),
                                            );
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(
                                                Dimensions.p20),
                                            decoration: BoxDecoration(
                                              color:
                                                  AppColors.statusRedContainer,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                Dimensions.r10,
                                              ),
                                            ),
                                            child: Center(
                                              child: Text(
                                                S.of(context).yes,
                                                style: CustomTextStyle
                                                    .kTextStyleF16
                                                    .copyWith(
                                                  color: AppColors.statusRed,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Gap(10.h),
                                        GestureDetector(
                                          onTap: () {
                                            context.pop();
                                          },
                                          child: Container(
                                            padding: const EdgeInsets.all(
                                                Dimensions.p20),
                                            decoration: BoxDecoration(
                                              // color: AppColors.statusRedContainer,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimensions.r10),
                                            ),
                                            child: Center(
                                              child: Text(
                                                S.of(context).close,
                                                style: CustomTextStyle
                                                    .kTextStyleF16
                                                    .copyWith(
                                                  color:
                                                      AppColors.textColorGrey,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                });
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: Dimensions.p4, horizontal: Dimensions.p8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(Dimensions.r25),
                                border: Border.all(
                                  color: AppColors.errorColor,
                                  width: 2,
                                )
                            ),
                            child: Text(
                              S.of(context).cancelOrder,
                              style: CustomTextStyle.kTextStyleF14.copyWith(
                                color: AppColors.errorColor,
                              ),
                            ),
                          ),
                        ),
                        // StatusIndicator(
                        //   statusText: "تم التوصيل",
                        //   textColor: AppColors.statusGreen,
                        //   containerColor: AppColors.statusGreenContainer,
                        // )
                      ],
                    ),
                    Gap(25.h),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: Dimensions.p16, vertical: Dimensions.p25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(Dimensions.r15),
                        boxShadow: const [
                          BoxShadow(
                            color: AppColors.textColorGrey,
                            blurRadius: 10,
                            offset: Offset(2, 2),
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                S.of(context).trackOrder,
                                style: CustomTextStyle.kTextStyleF14,
                              ),
                              Text(
                                "${widget.orderDetails.orderNumber}",
                                style: CustomTextStyle.kTextStyleF14.copyWith(
                                  color: AppColors.textColorGrey,
                                ),
                              ),
                            ],
                          ),
                          Gap(25.h),
                          const Divider(thickness: 2.0),
                          Gap(25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${S.of(context).amount}: 2",
                                style: CustomTextStyle.kTextStyleF12.copyWith(
                                  color: AppColors.textColorGrey,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "${S.of(context).total}: ",
                                    style:
                                        CustomTextStyle.kTextStyleF12.copyWith(
                                      color: AppColors.textColorGrey,
                                    ),
                                  ),
                                  Text(
                                    "189.00 SAR",
                                    style:
                                        CustomTextStyle.kTextStyleF12.copyWith(
                                      color: AppColors.textColor,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "20/03/2020",
                                style: CustomTextStyle.kTextStyleF12.copyWith(
                                  color: AppColors.textColorGrey,
                                ),
                              ),
                            ],
                          ),
                          Gap(25.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.p16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(S.of(context).deliveryRequestAccepted, style: CustomTextStyle.kTextStyleF14,),
                                    widget.orderDetails.acceptanceDate != null
                                        ? Text(
                                            DateTime.parse(
                                              widget
                                                  .orderDetails.acceptanceDate!,
                                            ).stringFormat(
                                              DateFormatType.hyphenatedDate,
                                            ),
                                      style: CustomTextStyle.kTextStyleF12.copyWith(
                                        color: AppColors.textColorGrey,
                                      ),
                                          )
                                        : const Text('')
                                  ],
                                ),
                                CircleAvatar(
                                  radius: Dimensions.r15,
                                  backgroundColor:
                                      widget.orderDetails.acceptanceDate != ""
                                          ? AppColors.successColor
                                          : AppColors.primary,
                                  child: Icon(
                                    MdiIcons.check,
                                    color:
                                        widget.orderDetails.acceptanceDate != ""
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Gap(55.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.p16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(S.of(context).orderPreparation, style: CustomTextStyle.kTextStyleF14,),
                                    widget.orderDetails.preparingDate != null
                                        ? Text(
                                      DateTime.parse(
                                        widget
                                            .orderDetails.preparingDate!,
                                      ).stringFormat(
                                        DateFormatType.hyphenatedDate,
                                      ),
                                      style: CustomTextStyle.kTextStyleF12.copyWith(
                                        color: AppColors.textColorGrey,
                                      ),
                                    )
                                        : const Text('')
                                  ],
                                ),
                                CircleAvatar(
                                  radius: Dimensions.r15,
                                  backgroundColor:
                                      widget.orderDetails.acceptanceDate != ""
                                          ? AppColors.successColor
                                          : AppColors.primary,
                                  child: Icon(
                                    MdiIcons.check,
                                    color:
                                        widget.orderDetails.acceptanceDate != ""
                                            ? Colors.white
                                            : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Gap(55.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.p16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(S
                                        .of(context)
                                        .yourOrderIsReadyForDelivery, style: CustomTextStyle.kTextStyleF14,),
                                    widget.orderDetails.availabilityDate != null
                                        ? Text(
                                      DateTime.parse(
                                        widget.orderDetails
                                            .availabilityDate!,
                                      ).stringFormat(
                                        DateFormatType.hyphenatedDate,
                                      ),
                                      style: CustomTextStyle.kTextStyleF12.copyWith(
                                        color: AppColors.textColorGrey,
                                      ),
                                    )
                                        : const Text('')
                                  ],
                                ),
                                CircleAvatar(
                                  radius: Dimensions.r15,
                                  backgroundColor:
                                  widget.orderDetails.acceptanceDate != ""
                                      ? AppColors.successColor
                                      : AppColors.primary,
                                  child: Icon(
                                    MdiIcons.check,
                                    color:
                                    widget.orderDetails.acceptanceDate != ""
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Gap(55.h),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: Dimensions.p16.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(S
                                        .of(context)
                                        .orderSuccessfullyDelivered, style: CustomTextStyle.kTextStyleF14,),
                                    widget.orderDetails.receivedDate != null
                                        ? Text(
                                      DateTime.parse(
                                        widget.orderDetails.receivedDate!,
                                      ).stringFormat(
                                        DateFormatType.hyphenatedDate,
                                      ),
                                      style: CustomTextStyle.kTextStyleF12.copyWith(
                                        color: AppColors.textColorGrey,
                                      ),
                                    )
                                        : const Text('')
                                  ],
                                ),
                                CircleAvatar(
                                  radius: Dimensions.r15,
                                  backgroundColor:
                                  widget.orderDetails.acceptanceDate != ""
                                      ? AppColors.successColor
                                      : AppColors.primary,
                                  child: Icon(
                                    MdiIcons.check,
                                    color:
                                    widget.orderDetails.acceptanceDate != ""
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
