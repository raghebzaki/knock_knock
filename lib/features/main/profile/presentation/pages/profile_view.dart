import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/app_images.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../../../../../generated/l10n.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (bool didPop) async {
        if (didPop) return;
        context.pushNamed(bottomNavBarPageRoute);
      },
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Column(
            children: [
              Text(
                S.of(context).profile,
                style: CustomTextStyle.kTextStyleF20,
              ),
            ],
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                context.pushNamed(loginPageRoute);
                CacheHelper.removeData("email");
                CacheHelper.removeData("pass");
              },
              icon: Icon(
                Icons.logout,
                color: Colors.red,
                size: 16.sp,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: 80.w,
                  height: 80.w,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          "https://via.placeholder.com/73x73"),
                      fit: BoxFit.cover,
                    ),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Gap(10.h),
              Text("name",style: CustomTextStyle.kTextStyleF16,),
              Text("+ 012 345 6789",style: CustomTextStyle.kTextStyleF12,),
              Gap(10.h),
              Container(
               decoration: const BoxDecoration(
                 border: BorderDirectional(
                   bottom: BorderSide(
                     color: AppColors.secondary,
                     width: 1,
                     style: BorderStyle.solid,
                   ),
                 ),
                 color: Colors.white,
               ),

                margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
                child: ListTile(
                  onTap: () {
                    context.pushNamed(editProfilePageRoute);
                  },
                  leading: Icon(Icons.person,color: AppColors.secondary,size: 30.sp,),
                  title: Opacity(
                    opacity: 0.90,
                    child: Text(
                      S.of(context).editProfile,
                      style: CustomTextStyle.kTextStyleF16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.lightBlue,
                    size: 16.sp,
                  ),
                ),
              ),
              Gap(10.h),
              Container(
                decoration: const BoxDecoration(
                 border: BorderDirectional(
                   bottom: BorderSide(
                     color: AppColors.secondary,
                     width: 1,
                     style: BorderStyle.solid,
                   ),
                 ),
                 color: Colors.white,
               ),

                margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
                child: ListTile(
                  onTap: () {
                    context.pushNamed(myOrdersPageRoute);
                  },
                  leading: Icon(MdiIcons.mapMarker,color: AppColors.secondary,size: 30.sp,),
                  title: Opacity(
                    opacity: 0.90,
                    child: Text(
                      S.of(context).myOrders,
                      style: CustomTextStyle.kTextStyleF16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.lightBlue,
                    size: 16.sp,
                  ),
                ),
              ),
              Gap(10.h),
              Container(
                decoration: const BoxDecoration(
                 border: BorderDirectional(
                   bottom: BorderSide(
                     color: AppColors.secondary,
                     width: 1,
                     style: BorderStyle.solid,
                   ),
                 ),
                 color: Colors.white,
               ),

                margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
                child: ListTile(
                  onTap: () {
                    context.pushNamed(creditsViewPageRoute);
                  },
                  leading: Image.asset(AppImages.credits,color: AppColors.secondary,width: 30.w,),
                  title: Opacity(
                    opacity: 0.90,
                    child: Text(
                      S.of(context).paymentMethods,
                      style: CustomTextStyle.kTextStyleF16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.lightBlue,
                    size: 16.sp,
                  ),
                ),
              ),
              Gap(10.h), 
              Container(
                decoration: const BoxDecoration(
                 border: BorderDirectional(
                   bottom: BorderSide(
                     color: AppColors.secondary,
                     width: 1,
                     style: BorderStyle.solid,
                   ),
                 ),
                 color: Colors.white,
               ),

                margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
                child: ListTile(
                  onTap: () {
                    context.pushNamed(settingsPageRoute);
                  },
                  title: Opacity(
                    opacity: 0.90,
                    child: Text(
                     S.of(context).giftCard,
                      style: CustomTextStyle.kTextStyleF16,
                    ),
                  ),
                  leading: Image.asset(AppImages.giftImg,color: AppColors.secondary,width: 30.w,),

                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.lightBlue,
                    size: 16.sp,
                  ),
                ),
              ),
              Gap(10.h),
              Container(
                decoration: const BoxDecoration(
                 border: BorderDirectional(
                   bottom: BorderSide(
                     color: AppColors.secondary,
                     width: 1,
                     style: BorderStyle.solid,
                   ),
                 ),
                 color: Colors.white,
               ),

                margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
                child: ListTile(
                  onTap: () {
                    context.pushNamed(settingsPageRoute);
                  },
                  title: Opacity(
                    opacity: 0.90,
                    child: Text(
                     S.of(context).getHelp,
                      style: CustomTextStyle.kTextStyleF16,
                    ),
                  ),
                  leading: Icon(MdiIcons.helpCircleOutline,color: AppColors.secondary,size: 30.w,),

                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.lightBlue,
                    size: 16.sp,
                  ),
                ),
              ),
              Gap(10.h),
              Container(
                decoration: const BoxDecoration(
                 border: BorderDirectional(
                   bottom: BorderSide(
                     color: AppColors.secondary,
                     width: 1,
                     style: BorderStyle.solid,
                   ),
                 ),
                 color: Colors.white,
               ),

                margin: EdgeInsets.symmetric(horizontal: 16.0.sp),
                child: ListTile(
                  onTap: () {
                    context.pushNamed(settingsPageRoute);
                  },
                  leading: Icon(MdiIcons.cog,color: AppColors.secondary,size: 30.w,),

                  title: Opacity(
                    opacity: 0.90,
                    child: Text(
                     S.of(context).settings,
                      style: CustomTextStyle.kTextStyleF16,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: AppColors.lightBlue,
                    size: 16.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
