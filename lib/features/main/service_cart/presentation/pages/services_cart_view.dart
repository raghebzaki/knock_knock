import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:getwidget/getwidget.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/shared/cubits/service_cart_cubit/service_cart_cubit.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/router/router.dart';
import '../../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/shared/arguments.dart';

class ServicesCartView extends StatefulWidget {
  const ServicesCartView({super.key});

  @override
  State<ServicesCartView> createState() => _ServicesCartViewState();
}

class _ServicesCartViewState extends State<ServicesCartView> {
  double finalPrice = 0;

  @override
  Widget build(BuildContext context) {
    var totalPrice = context.watch<ServiceCartCubit>().cartServices;


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
          child: context.watch<ServiceCartCubit>().cartServices.isNotEmpty
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
                              itemCount: context
                                  .watch<ServiceCartCubit>()
                                  .cartServices
                                  .length,
                              itemBuilder: (ctx, index) {
                                return GFListTile(
                                  padding: EdgeInsets.zero,
                                  margin: const EdgeInsets.symmetric(vertical: 5),

                                  color: Colors.white,
                                  avatar: GFAvatar(
                                    size: 60.sp,
                                    shape: GFAvatarShape.standard,
                                    backgroundImage: NetworkImage(
                                      AppConstants.imageUrl +
                                          context
                                              .watch<ServiceCartCubit>()
                                              .cartServices[index].servicesEntity!
                                              .image!,
                                    ),
                                  ),
                                  title: Text(
                                    CacheHelper.isEnglish()
                                        ? context
                                            .watch<ServiceCartCubit>()
                                            .cartServices[index].servicesEntity!
                                            .nameEn!
                                        : context
                                            .watch<ServiceCartCubit>()
                                            .cartServices[index].servicesEntity!
                                            .nameAr!,
                                    style: CustomTextStyle.kTextStyleF12,
                                  ),
                                  description: Row(
                                    children: [
                                      Text(
                                        "${context.watch<ServiceCartCubit>().cartServices[index].servicesEntity!.price} ${S.current.Aed}",
                                        style: CustomTextStyle.kTextStyleF14
                                            .copyWith(
                                                color: AppColors.textColor),
                                      ),
                                      const Spacer(),
                                      GestureDetector(
                                        onTap: () {
                                          context.read<ServiceCartCubit>().removeServiceFromCart(index);
                                        },
                                        child: Icon(
                                          Icons.delete,
                                          color: Colors.red,
                                          size: 25.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                            Gap(30.h),
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

                                  "${totalPrice.map((e) =>  int.parse(e.servicesEntity!.price!) ).reduce((value, element) => value + element) + AppConstants.deliveryFee} ${S.current.Aed}",
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
                                  "${totalPrice.map((e) =>  int.parse(e.servicesEntity!.price!) ).reduce((value, element) => value + element)} ${S.current.Aed}",
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
                              servicesPaymentSummeryPageRoute,
                              arguments: ServicesSummaryArgs(servicesPlaceOrderEntity: totalPrice)
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
