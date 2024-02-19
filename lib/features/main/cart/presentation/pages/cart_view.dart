import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/getwidget.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/app_images.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/router/router.dart';
import '../../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/shared/cubits/product_cart_cubit/product_cart_cubit.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  double finalPrice = 0;

  @override
  Widget build(BuildContext context) {
    var totalPrice = context.watch<ProductCartCubit>().cartProducts;
    for (var i = 0; i < totalPrice.length; i++) {
      if (totalPrice[i].discountPercent == 0) {
        finalPrice +=
            double.parse(totalPrice[i].price!) * totalPrice[i].userQuantity!;
      } else {
        finalPrice += double.parse(totalPrice[i].priceAfterDiscount!) *
            totalPrice[i].userQuantity!;
      }
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) return;
        context.pushNamed(bottomNavBarPageRoute);
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          title: Text(S.of(context).cart),
        ),
        body: SafeArea(
          child:
          // context.watch<CartCubit>().cartProducts.isNotEmpty ?
          Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimensions.p16),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            ListView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: 2,
                              itemBuilder: (ctx, index) {
                                return GFListTile(
                                  padding: EdgeInsets.zero,
                                  margin: const EdgeInsets.symmetric(vertical: 5),
                                  shadow: const BoxShadow(),

                                  color: Colors.white,
                                  avatar: GFAvatar(
                                    size: 60.sp,
                                    shape: GFAvatarShape.standard,
                                    backgroundImage:
                                        AssetImage(
                                      AppImages.appLogo,
                                    ),
                                  ),
                                  title: Text(
                                    // Intl.getCurrentLocale() == "en" ?
                                    "name",
                                        // : productItems.nameAr!,
                                    style: CustomTextStyle.kTextStyleF12,
                                  ),
                                  description: Row(
                                    children: [
                                      Text(
                                        // productItems.discountPercent == 0 ?
                                        "50 ${S.current.Aed}",
                                            // : "${productItems.priceAfterDiscount} ${S.current.Aed}",
                                        style: CustomTextStyle.kTextStyleF14
                                            .copyWith(
                                                color: AppColors.textColor),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // if (productItems
                                              //         .userQuantity! <=
                                              //     productItems.quantity!) {
                                              //   productItems.userQuantity =
                                              //       productItems
                                              //               .userQuantity! +
                                              //           1;
                                              // }
                                            });
                                          },
                                          child:
                                              Icon(MdiIcons.plusBoxOutline)),
                                      Gap(10.w),
                                      Text(
                                        "2",
                                        style: CustomTextStyle.kTextStyleF14
                                            .copyWith(
                                                color: AppColors.textColor),
                                      ),
                                      Gap(10.w),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              // if (productItems
                                              //         .userQuantity! >=
                                              //     1) {
                                              //   productItems.userQuantity =
                                              //       productItems
                                              //               .userQuantity! -
                                              //           1;
                                              // }
                                            });
                                          },
                                          child:
                                              Icon(MdiIcons.minusBoxOutline)),
                                    ],
                                  ),
                                );
                              },
                            ),
                            Gap(16.h),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  S.of(context).total,
                                  style: CustomTextStyle.kTextStyleF14
                                      .copyWith(color: AppColors.textColor),
                                ),
                                const Spacer(),
                                Text(
                                  "130 ${S.current.Aed}",
                                  // "${totalPrice.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! + int.parse(e.price!) * e.userQuantity! / 10 : int.parse(e.priceAfterDiscount!) * e.userQuantity! + int.parse(e.priceAfterDiscount!) * e.userQuantity! / 10).reduce((value, element) => value + element) + AppConstants.deliveryFee} ${S.current.Aed}",
                                  style: CustomTextStyle.kTextStyleF14
                                      .copyWith(color: AppColors.textColor),
                                ),
                              ],
                            ),
                            Gap(16.h),
                            Container(
                              decoration: const ShapeDecoration(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide(
                                    width: 1,
                                    strokeAlign: BorderSide.strokeAlignCenter,
                                    color: Color(0x14010C0E),
                                  ),
                                ),
                              ),
                            ),
                            Gap(16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  S.of(context).subTotal,
                                  style: CustomTextStyle.kTextStyleF14.copyWith(
                                      color: AppColors.textColorSecondary),
                                ),
                                const Spacer(),
                                Text(
                                  "100 ${S.current.Aed}",
                                  // "${totalPrice.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : int.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element)} ${S.current.Aed}",
                                  style: CustomTextStyle.kTextStyleF14.copyWith(
                                      color: AppColors.textColorSecondary),
                                ),
                              ],
                            ),
                            Gap(16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  S.of(context).deliveryFee,
                                  style: CustomTextStyle.kTextStyleF14.copyWith(
                                      color: AppColors.textColorSecondary),
                                ),
                                const Spacer(),
                                Text(
                                  '${AppConstants.deliveryFee} ${S.current.Aed}',
                                  style: CustomTextStyle.kTextStyleF14.copyWith(
                                      color: AppColors.textColorSecondary),
                                ),
                              ],
                            ),
                            Gap(16.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  S.of(context).tax,
                                  style: CustomTextStyle.kTextStyleF14.copyWith(
                                      color: AppColors.textColorSecondary),
                                ),
                                const Spacer(),
                                Text(
                                  "10 ${S.current.Aed}",
                                  // "${totalPrice.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : int.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element) / 10} ${S.current.Aed}",
                                  style: CustomTextStyle.kTextStyleF14.copyWith(
                                      color: AppColors.textColorSecondary),
                                ),
                              ],
                            ),
                            Gap(100.h),
                          ],
                        ),
                      ),
                    ),
                    Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: CustomBtn(
                          label: S.of(context).completePayment,
                          onPressed: () {
                             context.pushNamed(paymentSummeryPageRoute,);
                          },
                        ),
                      ),
                    ),
                  ],
                )
              // : Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       Center(
              //         child: Text(
              //           S.of(context).yourCartIsEmpty,
              //           style: CustomTextStyle.kTextStyleF20,
              //         ),
              //       ),
              //     ],
              //   ),
        ),
      ),
    );
  }
}
