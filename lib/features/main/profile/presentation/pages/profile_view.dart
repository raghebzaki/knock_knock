import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/extensions.dart';
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
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(70.0.h), // here the desired height
            child: AppBar(
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
              centerTitle: false,
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
                    color: AppColors.lightBlue,
                    size: 16.sp,
                  ),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Gap(10.h),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0.sp),
                    child: ListTile(
                      onTap: () {
                        context.pushNamed(editProfilePageRoute);
                      },
                      title: Opacity(
                        opacity: 0.90,
                        child: Text(
                          S.of(context).editProfile,
                          style: CustomTextStyle.kTextStyleF16
                              .copyWith(color: AppColors.textColorSecondary),
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
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0.sp),
                    child: ListTile(
                      onTap: () {
                        context.pushNamed(myOrdersPageRoute);
                      },
                      title: Opacity(
                        opacity: 0.90,
                        child: Text(
                          S.of(context).myOrders,
                          style: CustomTextStyle.kTextStyleF16
                              .copyWith(color: AppColors.textColorSecondary),
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
                    color: Colors.white,
                    padding: EdgeInsets.all(16.0.sp),
                    child: ListTile(
                      onTap: () {
                        context.pushNamed(settingsPageRoute);
                      },
                      title: Opacity(
                        opacity: 0.90,
                        child: Text(
                         S.of(context).settings,
                          style: CustomTextStyle.kTextStyleF16
                              .copyWith(color: AppColors.textColorSecondary),
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
        ),
      ),
    );
  }
}
