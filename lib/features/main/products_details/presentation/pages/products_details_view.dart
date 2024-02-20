import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/cubits/product_cart_cubit/product_cart_cubit.dart';
import '../../../../../core/shared/cubits/service_cart_cubit/service_cart_cubit.dart';
import '../../../../../core/shared/entities/product_entity.dart';
import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/shared/widgets/custom_button_small.dart';
import '../../../../../core/shared/widgets/date_widget.dart';
import '../../../../../core/shared/widgets/time_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../generated/l10n.dart';
import '../../../../bottom_nav_bar.dart';

class ProductsDetailsView extends StatefulWidget {
  final ProductEntity productEntity;

  const ProductsDetailsView({super.key, required this.productEntity});

  @override
  State<ProductsDetailsView> createState() => _ProductsDetailsViewState();
}

class _ProductsDetailsViewState extends State<ProductsDetailsView> {
  int selectedOption = 1;
  int date = 0;
  int time = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      bottomNavigationBar: const BottomNavForAllScreenView(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                AppConstants.imageUrl + widget.productEntity.image!,
                fit: BoxFit.cover,
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
                            Image.network(
                              "${AppImages.placeholder}70",
                              fit: BoxFit.cover,
                            ),
                            Gap(10.w),
                          ],
                        )),
                  ],
                ),
              ),
              Gap(10.h),
              Text(
                CacheHelper.isEnglish()
                    ? widget.productEntity.nameEn!
                    : widget.productEntity.nameAr!,
                style: CustomTextStyle.kTextStyleF16Black,
              ),
              Html(
                data: CacheHelper.isEnglish()
                    ? widget.productEntity.descriptionEn!
                    : widget.productEntity.descriptionAr!,
              ),
              const Divider(),
              Gap(5.h),
              Row(
                children: [
                  Text(
                    S.of(context).availability,
                    style: CustomTextStyle.kTextStyleF16Black,
                  ),
                  Text(
                    widget.productEntity.quantity!,
                    style: CustomTextStyle.kTextStyleF16BlackW300,
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    S.of(context).sku,
                    style: CustomTextStyle.kTextStyleF16Black,
                  ),
                  Text(
                    widget.productEntity.code.toString(),
                    style: CustomTextStyle.kTextStyleF16BlackW300,
                  ),
                ],
              ),
              const Divider(),
              Row(
                children: [
                  Radio(
                    value: 1,
                    groupValue: selectedOption,
                    onChanged: (value) {
                      setState(() {
                        selectedOption = value!;
                      });
                    },
                    activeColor: Colors.black,
                  ),
                  Expanded(
                    child: Text(
                      S.of(context).selectDateAndTimeOfDelivery,
                      style: CustomTextStyle.kTextStyleF16BlackW300,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Text(
                S.of(context).deliveryDate,
                style: CustomTextStyle.kTextStyleF16Black,
              ),
              const Divider(),
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
                                  date = index;
                                });
                              },
                              child: DateWidget(
                                  dayName: Intl.getCurrentLocale() == "ar"
                                      ? "اليوم"
                                      : "Today",
                                  isSelected: index == date ? true : false),
                            ),
                            Gap(10.w),
                          ],
                        )),
                  ],
                ),
              ),
              Gap(10.h),
              Text(
                S.of(context).deliveryTime,
                style: CustomTextStyle.kTextStyleF16Black,
              ),
              const Divider(),
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
                                  time = index;
                                });
                              },
                              child: const TimeWidget(),
                            ),
                            Gap(10.w),
                          ],
                        )),
                  ],
                ),
              ),
              Gap(10.h),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (widget.productEntity.userQuantity! >
                                  1) {
                                widget.productEntity.userQuantity =
                                    widget.productEntity.userQuantity! -
                                        1;
                              }
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: const Offset(0,
                                        3), // changes position of shadow
                                  ),
                                ],
                              ),
                              width: 35.w,
                              height: 35.w,
                              child: Center(
                                child: Icon(
                                  MdiIcons.minus,
                                  size: 35.sp,
                                ),
                              )),
                        ),
                        Gap(10.w),
                        SizedBox(
                            width: 35.w,
                            height: 35.w,
                            child: Center(
                              child: Text(
                                widget.productEntity.userQuantity
                                    .toString(),
                                style: CustomTextStyle.kTextStyleF18Black,
                              ),
                            )),
                        Gap(10.w),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              if (widget.productEntity.userQuantity! <
                                  int.parse(
                                      widget.productEntity.quantity!)) {
                                widget.productEntity.userQuantity =
                                    widget.productEntity.userQuantity! +
                                        1;
                              }
                            });
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.primary,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 3,
                                    blurRadius: 8,
                                    offset: const Offset(0,
                                        3), // changes position of shadow
                                  ),
                                ],
                              ),
                              width: 35.w,
                              height: 35.w,
                              child: Center(
                                child: Icon(
                                  MdiIcons.plus,
                                  size: 35.sp,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints:
                    BoxConstraints(maxWidth: context.width / 2),
                    child: CustomBtnSmall(
                      onPressed: () {
                        context
                            .read<ServiceCartCubit>()
                            .cartServices
                            .clear();
                        context
                            .read<ProductCartCubit>()
                            .addProductToCart(widget.productEntity);
                        context.pushNamed(productsCartPageRoute);
                      },
                      label: S.of(context).addToCart,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
