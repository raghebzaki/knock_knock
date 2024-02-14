import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/shared/widgets/custom_button_small.dart';
import 'package:knockknock/core/shared/widgets/date_widget.dart';
import 'package:knockknock/core/shared/widgets/time_widget.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../../../../core/router/router.dart';

import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/utils/app_images.dart';
import '../../../../../generated/l10n.dart';
import '../../../../bottom_nav_bar.dart';

class ProductsDetailsView extends StatefulWidget {
  const ProductsDetailsView({super.key});

  @override
  State<ProductsDetailsView> createState() => _ProductsDetailsViewState();
}

class _ProductsDetailsViewState extends State<ProductsDetailsView> {
  int selectedOption = 1;
  int date =0;
  int time =0;
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
                "${AppImages.placeholder}600x350",
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
                "Sunny oil",
                style: CustomTextStyle.kTextStyleF16Black,
              ),
              Gap(10.h),
              Text(
                "Extracted from the finest, handpicked olives, our Extra Virgin Olive Oil is cold-pressed to ensure the highest quality and purity. Its rich golden hue and robust, fruity aroma are a prelude to the depth of flavor that awaits within.",
                style: CustomTextStyle.kTextStyleF12Black,
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
                    "In Stock ",
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
                    "Knock Knock56235",
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
                                  onTap:(){
                                    setState(() {
                                      date=index;
                                    });
                                  },
                                  child: DateWidget(
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
                                  onTap:(){
                                    setState(() {
                                      time=index;
                                    });
                                  },
                                  child: TimeWidget(
                                      isSelected: index == time ? true : false),
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
                        Container(
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 8,
                                  offset: const Offset(0, 3), // changes position of shadow
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
                        Gap(10.w),
                        SizedBox(
                            width: 35.w,
                            height: 35.w,
                            child: Center(
                              child: Text(
                                "1",
                                style: CustomTextStyle.kTextStyleF18Black,
                              ),
                            )),
                        Gap(10.w),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColors.primary,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 8,
                                offset: const Offset(0, 3), // changes position of shadow
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

                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: context.width / 2),
                    child: CustomBtnSmall(
                      onPressed: () {
                        // context.read<CartCubit>().addToCart(
                        //   ProductEntity(
                        //     id: widget.productEntity.id,
                        //
                        //     quantity: widget.productEntity.quantity,
                        //     userQuantity: quantity,
                        //     price: widget.productEntity.price,
                        //     priceAfterDiscount: widget
                        //         .productEntity
                        //         .priceAfterDiscount,
                        //     discountPercent: widget.productEntity.discountPercent,
                        //     image: widget.productEntity.image,
                        //     images: widget.productEntity.images,
                        //     imagesBase64:widget.productEntity.imagesBase64,
                        //     nameEn: widget.productEntity.nameEn,
                        //     nameAr: widget.productEntity.nameAr,
                        //     descriptionEn: widget.productEntity.descriptionEn,
                        //     descriptionAr: widget.productEntity.descriptionAr,
                        //
                        //
                        //   ),
                        // );
                        context.pushNamed(cartPageRoute);
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
