import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/core/database/database_hive.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/models/user_data_model.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:badges/badges.dart' as badges;

import '../../../config/themes/app_text_styles.dart';
import '../../../generated/l10n.dart';
import '../../utils/app_colors.dart';
import '../../utils/app_images.dart';
import '../../utils/dimensions.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize => Size(double.infinity.w, 200.h);
}

class _CustomAppBarState extends State<CustomAppBar> {
  HiveDatabase hiveDatabase = HiveDatabase();
  List? addresses;

  getAddresses() async {
    addresses = await hiveDatabase.getAllAddresses();
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
        preferredSize: Size.fromHeight(200.h), // here the desired height
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
                                          color: AppColors.textColorSecondary)),
                                  Gap(30.h),
                                ListView.builder(
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  physics: const NeverScrollableScrollPhysics(),
                                  itemCount: addresses!.length,
                                  itemBuilder: (ctx, index) {
                                    return GestureDetector(
                                      onTap: () {
                                        setState(() {});
                                      },
                                      child: Row(
                                        children: [
                                          Text(addresses![index].address,
                                              style: CustomTextStyle.kTextStyleF14),
                                          const Spacer(),
                                          Icon(
                                            Icons.check,
                                            size: 16.sp,
                                            color: AppColors.lightBlue,
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                  Gap(20.h),
                                  GestureDetector(
                                    onTap: () {
                                      context.pop();
                                      context.pushNamed(mapPageRoute);
                                    },
                                    child: Row(
                                      children: [
                                        Text('Add new address',
                                            style: CustomTextStyle.kTextStyleF14),
                                        const Spacer(),
                              
                                        // Icon(Icons.check,size: 16.sp,color: AppColors.lightBlue,)
                                      ],
                                    ),
                                  )
                                  ,
                                ]
                                ,
                              ),
                            )
                            ,
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
                      Text(
                        "Abu Dhabi",
                        style: CustomTextStyle.kTextStyleF16,
                        // textAlign: TextAlign.center,
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
                      context.pushNamed(cartPageRoute);
                    },
                    child: CircleAvatar(
                      radius: 50.sp,
                      backgroundColor: AppColors.secondary,
                      child: badges.Badge(
                        badgeContent: Text(
                          '3',
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
              Container(
                padding: const EdgeInsets.all(Dimensions.p12),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.secondary,
                  ),
                  borderRadius: BorderRadius.circular(
                    Dimensions.r12,
                  ),
                ),
                child: Row(
                  children: [
                    Icon(
                      MdiIcons.magnify,
                      color: AppColors.secondary,
                    ),
                    Text(
                      S.of(context).searchFor,
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ).paddingSymmetric(
              horizontal: Dimensions.p24, vertical: Dimensions.p10),
        ),
      ),
    );
  }
}
