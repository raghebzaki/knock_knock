import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/getwidget.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/router/router.dart';
import '../../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/shared/cubits/product_cart_cubit/product_cart_cubit.dart';

class ProductsCartView extends StatefulWidget {
  const ProductsCartView({super.key});

  @override
  State<ProductsCartView> createState() => _ProductsCartViewState();
}

class _ProductsCartViewState extends State<ProductsCartView> {
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
    var product = context.read<ProductCartCubit>().cartProducts;

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
          child: context.watch<ProductCartCubit>().cartProducts.isNotEmpty
              ? Stack(
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
                              itemCount: product.length,
                              itemBuilder: (ctx, index) {
                                return GFListTile(
                                  padding: EdgeInsets.zero,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  shadow: const BoxShadow(),
                                  color: Colors.white,
                                  avatar: GFAvatar(
                                    size: 60.sp,
                                    shape: GFAvatarShape.standard,
                                    backgroundImage: NetworkImage(
                                      AppConstants.imageUrl +
                                          product[index].image!,
                                    ),
                                  ),
                                  title: Text(
                                    CacheHelper.isEnglish()
                                        ? product[index].nameEn!
                                        : product[index].nameAr!,
                                    // : productItems.nameAr!,
                                    style: CustomTextStyle.kTextStyleF12,
                                  ),
                                  description: Row(
                                    children: [
                                      Text(
                                        product[index].discountPercent == 0
                                            ? "${product[index].price} ${S.current.Aed}"
                                            : "${product[index].priceAfterDiscount} ${S.current.Aed}",
                                        style: CustomTextStyle.kTextStyleF14
                                            .copyWith(
                                                color: AppColors.textColor),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (product[index]
                                                      .userQuantity! <=
                                                  int.parse(product[index]
                                                      .quantity!)) {
                                                product[index].userQuantity =
                                                    product[index]
                                                            .userQuantity! +
                                                        1;
                                              }
                                            });
                                          },
                                          child: Icon(MdiIcons.plusBoxOutline)),
                                      Gap(10.w),
                                      Text(
                                        product[index].userQuantity.toString(),
                                        style: CustomTextStyle.kTextStyleF14
                                            .copyWith(
                                                color: AppColors.textColor),
                                      ),
                                      Gap(10.w),
                                      GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              if (product[index].userQuantity! > 1) {
                                                product[index].userQuantity = product[index].userQuantity! - 1;
                                              }else{
                                                context.read<ProductCartCubit>().removeProductFromCart(index);
                                              }
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

                                  "${totalPrice.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : int.parse(e.priceAfterDiscount!) * e.userQuantity! ).reduce((value, element) => value + element) + AppConstants.deliveryFee} ${S.current.Aed}",
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

                                  "${totalPrice.map((e) => e.discountPercent == 0 ? int.parse(e.price!) * e.userQuantity! : int.parse(e.priceAfterDiscount!) * e.userQuantity!).reduce((value, element) => value + element)} ${S.current.Aed}",
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
                            context.pushNamed(
                              productsPaymentSummeryPageRoute,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        S.of(context).yourCartIsEmpty,
                        style: CustomTextStyle.kTextStyleF20,
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
