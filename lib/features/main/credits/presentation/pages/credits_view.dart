import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/app_images.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';

class CreditsView extends StatefulWidget {
  const CreditsView({super.key});

  @override
  State<CreditsView> createState() => _CreditsViewState();
}

class _CreditsViewState extends State<CreditsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 280.h,
                width: context.width,
                padding: EdgeInsets.all(16.sp),
                color: AppColors.secondary,
                child:  SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(AppConstants.appName,style: CustomTextStyle.kTextStyleF24White,),
                          Gap(10.h),
                          Text("${S.of(context).Aed} ${AppConstants.userBalance}",style: CustomTextStyle.kTextStyleF24White,),
                          Gap(10.h),
                          Text(S.of(context).seeTransaction,style: CustomTextStyle.kTextStyleF12.copyWith(color: AppColors.primary),),
                        ],
                      ),
                      const Spacer(),
                      Image.asset(AppImages.walletImg),
                    ],
                  ),
                ),
              ),
              Gap(100.h),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 24.sp),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(S.of(context).availableCredits,style: CustomTextStyle.kTextStyleF16BlackW300,),
                    Gap(20.h),
                    Center(child: Image.asset(AppImages.bagImg)),
                  ],
                ),
              )

            ],
          ),
          
          Positioned(
            top: 200.h,
              right: 24.w,
              left: 24.w,
              child: Container(
                height: 150.h,
                width: context.width,
                decoration:   BoxDecoration(
                  color: Colors.white,
                    boxShadow:  [
                      BoxShadow(
                        color: const Color(0xff000000).withOpacity(0.26),
                        blurRadius: 10,
                        offset: const Offset(2, 2),
                        spreadRadius: 0,
                      )
                    ],
                  borderRadius: const BorderRadius.all(Radius.circular(20))
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 16.0.sp),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(S.of(context).selectAPackageThatSuitsYouBestAndEarnUp,
                        style: CustomTextStyle.kTextStyleF12Black,
                        textAlign: TextAlign.center,
                      ),
                      Gap(10.h),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: (){
                                context.pushNamed(buyCreditPageRoute);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.p5.w,
                                  vertical: Dimensions.p5.h,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                    Dimensions.r10,
                                  ),

                                ),
                                backgroundColor: AppColors.secondary,
                                foregroundColor: AppColors.primary,
                              ),
                              child: Text(
                                S.of(context).buyCredit,
                                style: CustomTextStyle.kTextStyleF16White,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
          ),
        ],
      ),
    );
  }
}
