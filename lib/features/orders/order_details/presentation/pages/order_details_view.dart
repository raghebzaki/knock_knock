import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:intl/intl.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/utils/app_images.dart';
import 'package:knockknock/core/utils/dimensions.dart';
import 'package:knockknock/core/utils/extensions.dart';
import '../../../../../../core/shared/entities/order_entity.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.white,
          title: Text("${S.of(context).orderNumber}#${widget.orderDetails.orderNumber}")),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:  Dimensions.p16,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(10.h),
                Container(
                  padding: const EdgeInsets.all(
                    Dimensions.p16,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow:  [
                      BoxShadow(
                        color: AppColors.textColorGrey,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            S.of(context).pendingAccessTo,
                            style: CustomTextStyle.kTextStyleF16,
                          ),
                          TextButton(
                            onPressed: () {
                              context.pushNamed(
                                trackOrderPageRoute,
                                arguments: OrderDetailAedgs(
                                  orderDetails: widget.orderDetails,
                                ),
                              );
                            },
                            child: Text(
                              S.of(context).trackOrder,
                              style: CustomTextStyle.kTextStyleF16.copyWith(
                                color: AppColors.secondary,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      Container(
                        padding: const EdgeInsets.all(Dimensions.p16),
                        decoration: const BoxDecoration(
                          color: Colors.white,

                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Row(
                              children: [
                                Image.asset(
                                  AppImages.mapPointerImg,
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                Gap(8.w),
                                Expanded(
                                  child: Text(
                                    "${widget.orderDetails.buildingNo}, ${widget.orderDetails.address}, ${widget.orderDetails.zipCode}, ${widget.orderDetails.city}, ${widget.orderDetails.state}",
                                    style: CustomTextStyle.kTextStyleF12,
                                    // overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            Gap(12.h),
                            Row(
                              children: [
                                Image.asset(
                                  AppImages.personImg,
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                Gap(8.w),
                                Text(
                                  "${widget.orderDetails.userName}",
                                  style: CustomTextStyle.kTextStyleF12,
                                ),
                              ],
                            ),
                            Gap(12.h),
                            Row(
                              children: [
                                Image.asset(
                                  AppImages.phoneImg,
                                  height: 16.h,
                                  width: 16.w,
                                ),
                                Gap(8.w),
                                Text(
                                  "${widget.orderDetails.phone}",
                                  style: CustomTextStyle.kTextStyleF12,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(20.h),
                      Text(
                        S.of(context).theExecutedOrder,
                        style: CustomTextStyle.kTextStyleF16,
                      ),
                      Gap(15.h),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 4,
                          itemBuilder: (ctx, index) {
                            return GFListTile(
                              padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 0),
                              margin: EdgeInsets.zero,
                              avatar: GFAvatar(
                                size: 50.h,
                                shape: GFAvatarShape.square,
                                child:Image.network(
                                  "${AppImages.placeholder}250",
                                  fit: BoxFit.contain,
                                ),
                              ),
                              title: Intl.getCurrentLocale() == "en"
                                  ? Text(
                                  "${widget.orderDetails.orderNumber}")
                                  : Text(
                                  "${widget.orderDetails.orderNumber}"),
                              subTitle: Text(
                                  "${widget.orderDetails.price} ${S.current.Aed}"),
                              description: Text("${S.current.quantity}: 2"),
                            );
                          }),
                    ],
                  ),
                ),

                Gap(15.h),
                Container(
                  width: context.queryWidth.w,
                  padding: const EdgeInsets.all(Dimensions.p16),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow:  [
                      BoxShadow(
                        color: AppColors.textColorGrey,
                        blurRadius: 10,
                        offset: Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            S.of(context).trackOrder,
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
                            S.of(context).total,
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
                            S.of(context).subTotal,
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
                            S.of(context).deliveryFee,
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
                            S.of(context).tax,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
