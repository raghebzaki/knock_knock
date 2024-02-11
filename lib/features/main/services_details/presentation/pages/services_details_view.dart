import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';

import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';
import 'package:knockknock/core/shared/widgets/custom_button_small.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/app_images.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/shared/widgets/date_widget.dart';
import '../../../../../core/shared/widgets/time_widget.dart';
import '../../../../../generated/l10n.dart';
import '../../../../bottom_nav_bar.dart';

class ServicesDetailsView extends StatefulWidget {
  const ServicesDetailsView({super.key});

  @override
  State<ServicesDetailsView> createState() => _ServicesDetailsViewState();
}

class _ServicesDetailsViewState extends State<ServicesDetailsView> {
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
              Text(
                S.of(context).details,
                style: CustomTextStyle.kTextStyleF16Black,
              ),
              Gap(10.h),
              Text(
                "Numbers: 4 Persons \n"
                    "Hire a cleaning  worker",
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
                    "All time",
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
                      S.of(context).selectDateAndTimeYouLikeUsToStart,
                      style: CustomTextStyle.kTextStyleF16BlackW300,
                    ),
                  ),
                ],
              ),
              const Divider(),
              Text(
                S.of(context).whatDateWouldYouLikeUsToStart,
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
                S.of(context).whatTimeWouldYouLikeUsToStart,
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
              Gap(30.h),
              Container(
                padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  color: AppColors.bg,
                  borderRadius: BorderRadius.all(Radius.circular(12.sp))
                ),
                child:  Column(
                  children: [
                    Center(
                      child:Text(
                        S.of(context).freeCancellationUntil12HoursBeforeTheStartOfYour,
                        textAlign: TextAlign.center,
                        style: CustomTextStyle.kTextStyleF14SubBlack,
                      ),

                    ),
                    Gap(10.h),
                    Align(
                      alignment:CacheHelper.isEnglish()?Alignment.bottomRight:Alignment.bottomLeft,
                      child: Text(
                        S.of(context).details,
                        textAlign: TextAlign.start,
                        style: CustomTextStyle.kTextStyleF16w600,
                      ),
                    ),
                  ],
                ),
              ),
              Gap(10.h),
              Container(
                width: context.width,
                padding: EdgeInsets.all(20.sp),
                decoration: BoxDecoration(
                  color: AppColors.bg,
                  borderRadius: BorderRadius.all(Radius.circular(12.sp))
                ),
                child:  Column(
                  children: [
                    Align(
                      alignment:CacheHelper.isEnglish()?Alignment.topLeft:Alignment.topRight,
                      child: Text(
                        S.of(context).anySpecificInstructions,
                        textAlign: TextAlign.start,
                        style: CustomTextStyle.kTextStyleF14SubBlack,
                      ),
                    ),
                    Gap(10.h),
                    Align(
                      alignment:CacheHelper.isEnglish()?Alignment.bottomRight:Alignment.bottomLeft,

                      child: Text(
                        S.of(context).add,
                        textAlign: TextAlign.start,
                        style: CustomTextStyle.kTextStyleF16w600,
                      ),
                    ),

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
                      Center(
                              child: Text(
                                "129 ${S.of(context).Aed}",
                                style: CustomTextStyle.kTextStyleF18Black,
                              ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    constraints: BoxConstraints(maxWidth: context.width / 2),
                    child: CustomBtnSmall(
                      onPressed: () {},
                      label: S.of(context).next,
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
