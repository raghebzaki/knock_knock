import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../utils/dimensions.dart';
import '../arguments.dart';

class ServiceItem extends StatelessWidget {
  final ServicesEntity servicesEntity;
  const ServiceItem({super.key, required this.servicesEntity});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        context.pushNamed(servicesDetailsPageRoute,arguments: ServicesArgs(servicesEntity: servicesEntity));
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: context.queryWidth.w,
            height: 104.h,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: NetworkImage(AppConstants.imageUrl+servicesEntity.image!,),
                fit: BoxFit.fill,

              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Dimensions.r12),
              ),
              shadows:  const [
                BoxShadow(
                  color: AppColors.primary,
                  blurRadius: 10,
                  offset: Offset(2, 2),
                  spreadRadius: 0,
                )
              ],
            ),
          ),
          Gap(2.h),
          Text(
            CacheHelper.isEnglish()?servicesEntity.nameEn!:servicesEntity.nameAr!,
            textAlign: TextAlign.center,
            style: CustomTextStyle.kTextStyleF12Black,
          ),
        ],
      ),
    );

    // return Column(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   mainAxisSize: MainAxisSize.min,
    //   children: [
    //     ClipRRect(
    //       borderRadius: BorderRadius.circular(
    //         Dimensions.r15,
    //       ),
    //       child: Image.network(
    //         "${AppImages.placeholder}152x104",
    //       ),
    //     ),
    //     Text(
    //       "Hire a cleaning\n worker",
    //       style: CustomTextStyle.kTextStyleF12,
    //       textAlign: TextAlign.center,
    //     ),
    //   ],
    // );
  }
}
