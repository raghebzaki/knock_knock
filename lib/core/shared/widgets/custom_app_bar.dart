import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/core/database/address_class.dart';
import 'package:knockknock/core/database/database_hive.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/cubits/product_cart_cubit/product_cart_cubit.dart';
import 'package:knockknock/core/shared/models/user_data_model.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:badges/badges.dart' as badges;

import '../../../config/themes/app_text_styles.dart';
import '../../../generated/l10n.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';
import '../cubits/service_cart_cubit/service_cart_cubit.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final bool searchBar;
  final Function(String)? onChange;
  final TextEditingController? searchCtrl;

  const CustomAppBar({
    super.key, required this.searchBar, this.onChange, this.searchCtrl,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(double.infinity.w, searchBar?200.h:150.h);
}

class _CustomAppBarState extends State<CustomAppBar> {
  HiveDatabase hiveDatabase = HiveDatabase();
  List<Address> addresses = [];

  getAddresses() async {
    addresses = await hiveDatabase.getAllAddresses();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getAddresses();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PreferredSize(
        preferredSize: Size.fromHeight(widget.searchBar?200.h:150.h), // here the desired height
        child: Container(
          decoration: const BoxDecoration(
            color: AppColors.primary,
          ),
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AppImages.sunSvg,
                    height: 25.h,
                    width: 25.h,
                  ),
                  Gap(5.w),
                  Text("${S.current.goodMorning}, ${UserData.firstName}"),
                ],
              ),
              Gap(8.h),
              AppBar(
                titleSpacing: 0,
                backgroundColor: Colors.white,
                elevation: 0,
                automaticallyImplyLeading: false,
                title: GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(24),
                          ),
                        ),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        builder: (BuildContext context) {
                          return Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 24.w, vertical: 48.h),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("choose delivery location",
                                      textAlign: TextAlign.right,
                                      style: CustomTextStyle.kTextStyleF16
                                          .copyWith(
                                              color: AppColors
                                                  .textColorSecondary)),
                                  Gap(30.h),
                                  ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    itemCount: addresses.length,
                                    itemBuilder: (ctx, index) {
                                      return Column(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                AppConstants.addressIndex =
                                                    index;
                                                context.pop();
                                              });
                                            },
                                            child: Row(
                                              children: [
                                                Text(
                                                    addresses[index].address!,
                                                    style: CustomTextStyle
                                                        .kTextStyleF14),
                                                const Spacer(),
                                                AppConstants.addressIndex ==
                                                        index
                                                    ? Icon(
                                                        Icons.check,
                                                        size: 16.sp,
                                                        color: AppColors
                                                            .lightBlue,
                                                      )
                                                    : const SizedBox.shrink(),
                                              ],
                                            ),
                                          ),
                                          Gap(20.h),
                                        ],
                                      );
                                    },
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      context.pop();
                                      context.pushNamed(mapPageRoute);
                                    },
                                    child: Row(
                                      children: [
                                        Text(S.of(context).addNewAddress,
                                            style: CustomTextStyle
                                                .kTextStyleF14),
                                        const Spacer(),

                                        // Icon(Icons.check,size: 16.sp,color: AppColors.lightBlue,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        });
                  },
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        AppImages.pinSvg,
                        height: 32.h,
                        width: 25.h,
                      ),
                      Gap(5.w),
                      Expanded(
                        child: Text(
                          addresses.isEmpty
                              ? S.of(context).addNewAddress
                              : addresses[AppConstants.addressIndex].address!,
                          style: CustomTextStyle.kTextStyleF16,
                          overflow: TextOverflow.ellipsis,
                          // textAlign: TextAlign.center,
                        ),
                      ),
                      Gap(5.w),
                      Icon(
                        Icons.arrow_downward,
                        size: 15.sp,
                        color: AppColors.secondary,
                      ),
                    ],
                  ),
                ),
                centerTitle: false,
                actions: [
                  GestureDetector(
                    onTap: () {
                      if (context
                          .read<ProductCartCubit>()
                          .cartProducts
                          .isEmpty) {
                        context.pushNamed(servicesCartPageRoute);
                      } else {
                        context.pushNamed(productsCartPageRoute);
                      }
                    },
                    child: CircleAvatar(
                      radius: 50.sp,
                      backgroundColor: AppColors.secondary,
                      child: badges.Badge(
                        badgeContent: Text(
                          context
                                  .read<ProductCartCubit>()
                                  .cartProducts
                                  .isEmpty
                              ? '${context.read<ServiceCartCubit>().cartServices.length}'
                              : '${context.read<ProductCartCubit>().cartProducts.length}',
                          style: CustomTextStyle.kTextStyleF14,
                        ),
                        child: const Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Gap(20.h),
              widget.searchBar ? TextFormField(
                controller: widget.searchCtrl,
                onChanged: widget.onChange,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(
                          color: AppColors.secondaryLight, width: 5),
                    ),
                    hintText: S.current.searchFor,
                    counter: const Offstage(),
                    isDense: true,
                    prefixIcon: const Icon(Icons.search,
                        color: AppColors.secondary),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: Dimensions.p10.w,
                      vertical: Dimensions.p10.h,
                    ),
                    labelStyle: CustomTextStyle.kFormFieldTextStyle,
                    hintStyle: CustomTextStyle.kFormFieldTextStyle),
              ):const SizedBox.shrink(),
            ],
          ).paddingSymmetric(
              horizontal: Dimensions.p24, vertical: Dimensions.p10),
        ),
      ),
    );
  }
}
