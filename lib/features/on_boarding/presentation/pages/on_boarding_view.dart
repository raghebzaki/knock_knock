import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../config/themes/app_text_styles.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../generated/l10n.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  OnBoardingViewState createState() => OnBoardingViewState();
}

class OnBoardingViewState extends State<OnBoardingView> {
  PageController controller = PageController();
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
          color: AppColors.primary,
        ),
        child: Stack(
          children: <Widget>[
            PageView(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: controller,
              children: [
                Column(
                  children: [
                    Gap(140.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Image.asset(
                        AppImages.appLogo,
                        height: 300.h,
                        width: 300.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 16.h),
                      child: Text(S.current.onboard_1,
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.onBoardingTextStyleF30),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 16.h),
                      child: Text(S.current.onboard_1_des,
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.kTextStyleF14Sub),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Gap(140.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Image.asset(
                        AppImages.appLogo,
                        height: 300.h,
                        width: 300.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 16.h),
                      child: Text(S.current.onboard_2,
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.onBoardingTextStyleF30),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 16.h),
                      child: Text(S.current.onboard_2_des,
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.kTextStyleF14Sub),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Gap(140.h),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.h),
                      child: Image.asset(
                        AppImages.appLogo,
                        height: 300.h,
                        width: 300.w,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 16.h),
                      child: Text(S.current.onboard_3,
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.onBoardingTextStyleF30),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 50.w, vertical: 16.h),
                      child: Text(S.current.onboard_3_des,
                          textAlign: TextAlign.center,
                          style: CustomTextStyle.kTextStyleF14Sub),
                    ),
                  ],
                ),
              ],
            ),
            Positioned(
              bottom: 16.0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SmoothPageIndicator(
                      controller: controller,
                      count: 3,
                      effect: ExpandingDotsEffect(
                        dotHeight: 8.h,
                        dotWidth: 8.w,
                        dotColor: Colors.black54,
                        activeDotColor: AppColors.secondary,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Opacity(
                          opacity: pageIndex != 2 ? 1.0 : 0.0,
                          child: TextButton(
                            child: Text(S.current.skip,
                                style: CustomTextStyle.kTextStyleF14SubBlack),
                            onPressed: () {
                              context.pushReplacementNamed(loginPageRoute);
                              CacheHelper.setData("initScreen", 1);
                            },
                          ),
                        ),
                        pageIndex != 2
                            ? TextButton(
                                child: Text(S.current.next,
                                    style:
                                        CustomTextStyle.kTextStyleF14SubBlack),
                                onPressed: () {
                                  if (!(controller.page == 2.0)) {
                                    controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 200),
                                        curve: Curves.linear);
                                  }
                                },
                              )
                            : TextButton(
                                child: Text(S.current.finish,
                                    style:
                                        CustomTextStyle.kTextStyleF14SubBlack),
                                onPressed: () {
                                  context.pushReplacementNamed(loginPageRoute);
                                  CacheHelper.setData("initScreen", 1);
                                },
                              )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
