import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/core/database/address_class.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/models/user_data_model.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/payment/products_payment_summary/domain/entities/products_coupon_entity.dart';
import 'package:knockknock/features/payment/products_payment_summary/presentation/manager/products_coupon_cubit.dart';
import 'package:knockknock/features/payment/products_payment_summary/presentation/manager/products_place_order_cubit.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/cubits/product_cart_cubit/product_cart_cubit.dart';
import '../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/products_place_order_entity.dart';

class ProductsPaymentSummaryView extends StatefulWidget {
  final Address address;
  const ProductsPaymentSummaryView({
    super.key, required this.address,
  });

  @override
  State<ProductsPaymentSummaryView> createState() =>
      _ProductsPaymentSummaryViewState();
}

class _ProductsPaymentSummaryViewState
    extends State<ProductsPaymentSummaryView> {

  List<num> productsId=[];
  List<num> productsQuantities=[];
  String paymentMethod = "cash";
  TextEditingController voucherCtrl = TextEditingController();
  ProductsCouponEntity productsCouponEntity =const ProductsCouponEntity(information: ProductsCouponEntity());
  @override
  Widget build(BuildContext context) {
    var product = context.read<ProductCartCubit>().cartProducts;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.di<ProductsPlaceOrderCubit>(),
        ),
        BlocProvider(
          create: (context) => di.di<ProductsCouponCubit>(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
            backgroundColor: AppColors.primary,
            title: Text(
              S.of(context).checkout,
              style: CustomTextStyle.kTextStyleF22Black,
            )),
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
                          TextButton(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (ctx) {
                                  return AlertDialog.adaptive(
                                    title: Text(
                                        S.of(context).preferredPaymentMethod),
                                    titleTextStyle:
                                        CustomTextStyle.kTextStyleF16,
                                    content: Column(
                                      children: [
                                        Expanded(
                                          child: CustomBtn(
                                            label: S.of(context).cash,
                                            onPressed: () {
                                              setState(() {
                                                paymentMethod = "cash";
                                              });
                                            },
                                          ),
                                        ),
                                        Gap(10.h),
                                        Expanded(
                                          child: CustomBtn(
                                            label: S.of(context).creditCard,
                                            onPressed: () {
                                              setState(() {
                                                paymentMethod = "credit";
                                              });
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              S.of(context).change,
                              style: CustomTextStyle.kTextStyleF16,
                            ),
                          ),
                        ],
                      ),
                      Gap(10.h),
                      Image.asset(
                        paymentMethod == "credit"
                            ? AppImages.cardImg
                            : AppImages.cashImg,
                        width: context.width,
                      ),
                      Gap(10.h),
                      Column(
                        children: [
                          CustomFormField(
                            hint: S.of(context).cardHolderName,
                          ),
                          CustomFormField(
                            hint: S.of(context).cardNumber,
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
                                  hint: S.of(context).cvv,
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
                      BlocConsumer<ProductsCouponCubit, ProductsCouponState>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          ProductsCouponCubit productsCouponCubit=ProductsCouponCubit.get(context);
                          return Column(
                            children: [
                              Container(
                                width: context.width,
                                padding: EdgeInsets.all(20.sp),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: AppColors.secondary,
                                    ),
                                    color: AppColors.primary,
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(12.sp))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      S.of(context).voucherCode,
                                      style: CustomTextStyle
                                          .kTextStyleF16BlackW300,
                                    ),
                                    Gap(15.h),
                                    SizedBox(
                                      // width: context.width/3,
                                      child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (ctx) {
                                              return AlertDialog.adaptive(
                                                title: Text(S
                                                    .of(context)
                                                    .preferredPaymentMethod),
                                                titleTextStyle: CustomTextStyle
                                                    .kTextStyleF16,
                                                content: Column(
                                                  mainAxisSize:
                                                  MainAxisSize.min,
                                                  children: [
                                                    CustomFormField(
                                                      ctrl: voucherCtrl,
                                                      label: S.current
                                                          .addVoucherCode,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        productsId.clear();
                                                        productsQuantities.clear();
                                                        for (var item in product) {
                                                          productsId.add(item.id!);
                                                          productsQuantities.add(item.userQuantity!);
                                                        }
                                                        productsCouponCubit.applyCoupon(
                                                            ProductsCouponEntity(
                                                                productsId: productsId,
                                                                productsQuantities: productsQuantities,
                                                                couponName: voucherCtrl.text
                                                            ),
                                                        );
                                                        context.pop();
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                            horizontal:
                                                            16.sp,
                                                            vertical: 2.sp),
                                                        decoration:
                                                        BoxDecoration(
                                                          color: AppColors
                                                              .secondary,
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                            12,
                                                          ),
                                                        ),
                                                        child: Text(
                                                          S.of(context).apply,
                                                          style: CustomTextStyle
                                                              .kTextStyleF16White,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          );
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.sp,
                                              vertical: 2.sp),
                                          decoration: BoxDecoration(
                                            color: AppColors.secondary,
                                            borderRadius: BorderRadius.circular(
                                              12,
                                            ),
                                          ),
                                          child: Text(
                                            S.of(context).add,
                                            style: CustomTextStyle
                                                .kTextStyleF16White,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Gap(20),
                              state.maybeWhen(
                                initial: () {
                                  return Container(
                                    width: context.width,
                                    padding: EdgeInsets.all(20.sp),
                                    decoration: BoxDecoration(
                                        color: AppColors.bg,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.sp))),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          S.of(context).paymentSummary,
                                          style: CustomTextStyle.kTextStyleF16Black,
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(S.current.subTotal,
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                            const Spacer(),
                                            Text(
                                                "${product.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : double.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element)} ${S.current.Aed}",
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(S.current.deliveryFee,
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                            const Spacer(),
                                            Text(
                                                '${AppConstants.deliveryFee} ${S.current.Aed}',
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.current.total,
                                              style: CustomTextStyle
                                                  .kTextStyleF16BlackW300
                                                  .copyWith(
                                                  color: AppColors.textColor),
                                            ),
                                            const Spacer(),
                                            Text(
                                                "${product.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : double.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element) + AppConstants.deliveryFee} ${S.current.Aed}",
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                loading: () {
                                  return Container(
                                    width: context.width,
                                    padding: EdgeInsets.all(20.sp),
                                    decoration: BoxDecoration(
                                        color: AppColors.bg,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.sp))),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          S.of(context).paymentSummary,
                                          style: CustomTextStyle.kTextStyleF16Black,
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(S.current.subTotal,
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                            const Spacer(),
                                            Text(
                                                "${product.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : double.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element)} ${S.current.Aed}",
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(S.current.deliveryFee,
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                            const Spacer(),
                                            Text(
                                                '${AppConstants.deliveryFee} ${S.current.Aed}',
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.current.total,
                                              style: CustomTextStyle
                                                  .kTextStyleF16BlackW300
                                                  .copyWith(
                                                  color: AppColors.textColor),
                                            ),
                                            const Spacer(),
                                            Text(
                                                "${product.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : double.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element) + AppConstants.deliveryFee} ${S.current.Aed}",
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                success: (state) {
                                  productsCouponEntity=state;
                                  return Container(
                                    width: context.width,
                                    padding: EdgeInsets.all(20.sp),
                                    decoration: BoxDecoration(
                                        color: AppColors.bg,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12.sp))),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          S.of(context).paymentSummary,
                                          style: CustomTextStyle.kTextStyleF16Black,
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(S.current.subTotal,
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                            const Spacer(),
                                            Text(
                                                "${product.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : double.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element)} ${S.current.Aed}",
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                        Gap(15.h),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(S.current.deliveryFee,
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                            const Spacer(),
                                            Text(
                                                '${AppConstants.shippingFee} ${S.current.Aed}',
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                        state.status == 1
                                            ? Gap(15.h)
                                            : const SizedBox.shrink(),
                                        state.status == 1
                                            ? Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                          children: [
                                            Text(
                                                S
                                                    .of(context)
                                                    .voucherDiscount,
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                            const Spacer(),
                                            Text(
                                                '-${state.information!.discountAmount} ${S.current.Aed}',
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        )
                                            : const SizedBox.shrink(),
                                        Gap(15.h),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              S.current.total,
                                              style: CustomTextStyle
                                                  .kTextStyleF16BlackW300
                                                  .copyWith(
                                                  color: AppColors.textColor),
                                            ),
                                            const Spacer(),
                                            state.status == 1
                                                ? Text(
                                                "${state.information!.grantTotal} ${S.current.Aed}",
                                                style: CustomTextStyle.kTextStyleF16BlackW300)
                                                :Text(
                                                "${product.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : double.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element) + AppConstants.deliveryFee} ${S.current.Aed}",
                                                style: CustomTextStyle
                                                    .kTextStyleF16BlackW300),
                                          ],
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                orElse: () {
                                  return const SizedBox.shrink();
                                },
                              ),

                            ],
                          );
                        },
                      ),
                      Gap(100.h),
                    ],
                  ),
                ),
              ),
              BlocConsumer<ProductsPlaceOrderCubit, ProductsPlaceOrderState>(
                listener: (context, state) {
                  state.maybeWhen(success: (state) {
                    if (state.status == 1) {
                      context.defaultSnackBar(
                          S.of(context).orderCreatedSuccessfully);
                      context.pushNamed(myOrdersPageRoute);
                    }
                  }, orElse: () {
                    return null;
                  });
                },
                builder: (context, state) {
                  ProductsPlaceOrderCubit productsPlaceOrderCubit =
                  ProductsPlaceOrderCubit.get(context);
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      child: CustomBtn(
                        label: S.of(context).confirmPayment,
                        onPressed: () async {
                          productsId.clear();
                          productsQuantities.clear();
                          for (var item in product) {
                            productsId.add(item.id!);
                            productsQuantities.add(item.userQuantity!);
                          }
                          productsPlaceOrderCubit
                              .placeOrder(ProductsPlaceOrderEntity(
                            userId:UserData.id,
                            paymentMethod: "Cash",
                            address: widget.address.address,
                            buildingNo: widget.address.building,
                            flatNo: widget.address.flat,
                            city: widget.address.city,
                            state: widget.address.country,
                            longitude: widget.address.longitude.toString(),
                            latitude: widget.address.latitude.toString(),
                            discountPercentage:productsCouponEntity.information!.discountPercentage,
                            discountAmount: productsCouponEntity.information!.discountAmount,
                            priceAfterDiscount: productsCouponEntity.information!.priceAfterDiscount,
                            grantTotal: productsCouponEntity.information!.grantTotal,
                            productCouponId: productsCouponEntity.information!.productCouponId,
                            productsId: productsId,
                            productQuantities:productsQuantities ,

                          ));
                        },
                      ),
                    ),
                  );
                },
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Container(
              //     color: Colors.white,
              //     child: CustomBtn(
              //       label: S.of(context).confirmPayment,
              //       onPressed: () async {},
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
