import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:intl/intl.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/app_images.dart';
import 'package:knockknock/core/utils/dimensions.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/orders/products/order_details/presentation/manager/cancel_product_order_cubit.dart';
import '../../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../../core/router/router.dart';
import '../../../../../../core/shared/models/user_data_model.dart';
import '../../../my_products_orders/domain/entities/products_order_entity.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../generated/l10n.dart';
import '../../domain/entities/cancel_order_entity.dart';

class OrderDetailsView extends StatefulWidget {
  final ProductsOrderEntity orderDetails;
  const OrderDetailsView({super.key, required this.orderDetails});

  @override
  State<OrderDetailsView> createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<CancelProductOrderCubit>(),
      child: BlocConsumer<CancelProductOrderCubit, CancelProductOrderState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              if (state.status == 1) {
                context.defaultSnackBar(S.of(context).orderCancelSuccessfully);
                context.pushNamed(myOrdersPageRoute);
              }
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          CancelProductOrderCubit cancelProductOrderCubit =
              CancelProductOrderCubit.get(context);

          return Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppBar(
                backgroundColor: Colors.white,
                title: Text(
                    "${S.of(context).orderNumber}#${widget.orderDetails.orderNumber}")),
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimensions.p16,
                  ),
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
                          boxShadow: [
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
                                widget.orderDetails.status == 0
                                    ? GestureDetector(
                                        onTap: () {
                                          showModalBottomSheet(
                                              context: context,
                                              builder: (ctx) {
                                                return Padding(
                                                  padding: const EdgeInsets
                                                      .symmetric(
                                                      horizontal:
                                                          Dimensions.p16,
                                                      vertical: Dimensions.p25),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        S
                                                            .of(context)
                                                            .cancelAlert,
                                                        style: CustomTextStyle
                                                            .kTextStyleF16,
                                                      ),
                                                      Gap(24.h),
                                                      GestureDetector(
                                                        onTap: () {
                                                          cancelProductOrderCubit
                                                              .cancelOrder(
                                                            CancelProductOrderEntity(
                                                              orderId: widget
                                                                  .orderDetails
                                                                  .id,
                                                            ),
                                                          );
                                                        },
                                                        child: Container(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(
                                                                  Dimensions
                                                                      .p20),
                                                          decoration:
                                                              BoxDecoration(
                                                            color: AppColors
                                                                .statusRedContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                              Dimensions.r10,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              S.of(context).yes,
                                                              style: CustomTextStyle
                                                                  .kTextStyleF16
                                                                  .copyWith(
                                                                color: AppColors
                                                                    .statusRed,
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
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(
                                                                  Dimensions
                                                                      .p20),
                                                          decoration:
                                                              BoxDecoration(
                                                            // color: AppColors.statusRedContainer,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        Dimensions
                                                                            .r10),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              S
                                                                  .of(context)
                                                                  .close,
                                                              style: CustomTextStyle
                                                                  .kTextStyleF16
                                                                  .copyWith(
                                                                color: AppColors
                                                                    .textColorGrey,
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
                                          padding: const EdgeInsets.symmetric(
                                              vertical: Dimensions.p4,
                                              horizontal: Dimensions.p8),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      Dimensions.r25),
                                              border: Border.all(
                                                color: AppColors.errorColor,
                                                width: 2,
                                              )),
                                          child: Text(
                                            S.of(context).cancelOrder,
                                            style: CustomTextStyle.kTextStyleF14
                                                .copyWith(
                                              color: AppColors.errorColor,
                                            ),
                                          ),
                                        ),
                                      )
                                    : const SizedBox.shrink(),
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
                                          "${widget.orderDetails.address}, ${widget.orderDetails.city}, ${widget.orderDetails.state}",
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
                                        "${UserData.firstName} ${UserData.lastName}",
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
                                        "${UserData.phone}",
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
                              itemCount: widget.orderDetails.items!.length,
                              itemBuilder: (ctx, index) {
                                return GFListTile(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 5.h, horizontal: 0),
                                  margin: EdgeInsets.zero,
                                  avatar: GFAvatar(
                                    size: 50.h,
                                    shape: GFAvatarShape.square,
                                    child: Image.network(
                                      AppConstants.imageUrl +
                                          widget.orderDetails.items![index]
                                              .product!.image!,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  title: Intl.getCurrentLocale() == "en"
                                      ? Text(widget.orderDetails.items![index]
                                          .product!.nameEn!)
                                      : Text(
                                          "${widget..orderDetails.items![index].product!.nameEn!}"),
                                  // subTitle: Text("${widget.orderDetails.price} ${S.current.Aed}"),
                                  description: Text(
                                      "${S.current.quantity}: ${widget.orderDetails.items![index].quantity!}"),
                                );
                              },
                            ),
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
                          boxShadow: [
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
                                  widget.orderDetails.priceAfterDiscount==''?"${widget.orderDetails.price} ${S.current.Aed}":"${widget.orderDetails.priceAfterDiscount} ${S.current.Aed}",
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
                                Text(
                                    "${widget.orderDetails.shippingCost} ${S.current.Aed}",
                                    style: CustomTextStyle.kTextStyleF14),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gap(15.h),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
