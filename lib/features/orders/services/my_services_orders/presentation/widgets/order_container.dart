import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/shared/arguments.dart';


import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/shared/widgets/status_indicator.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../core/utils/extensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../../core/router/router.dart';
import '../../domain/entities/services_order_entity.dart';

class OrderContainer extends StatelessWidget {
  final ServicesOrderEntity? orderEntity;

  const OrderContainer({
    super.key,
    this.orderEntity,
  });

  @override
  Widget build(BuildContext context) {
    List<String> statusList = [
      S.current.pending,
      S.current.processing,
      S.current.done_status,
      S.current.cancelled_status,
    ];
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          servicesOrderDetailsPageRoute,
          arguments: ServicesOrderDetailArgs(
            orderDetails: orderEntity!,
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(Dimensions.p20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow:  [
            BoxShadow(
              color: AppColors.textColorGrey,
              blurRadius: 10,
              offset: Offset(2, 2),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${S.of(context).trackOrder} #${orderEntity!.orderNumber}",
                  style: CustomTextStyle.kTextStyleF14,
                ),
                 StatusIndicator(
                  statusText: statusList[orderEntity!.status!],
                  textColor: orderEntity!.status==3?AppColors.statusRed
                                :orderEntity!.status==2?AppColors.statusGreen:AppColors.statusCarrot,
                  containerColor: orderEntity!.status==3?AppColors.statusRedContainer
                      :orderEntity!.status==2?AppColors.statusGreenContainer:AppColors.statusYellowContainer,
                )
              ],
            ),
            Gap(10.h),
            const Divider(thickness: 2.0),
            Gap(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "${S.of(context).total}: ",
                      style: CustomTextStyle.kTextStyleF12.copyWith(
                        color: AppColors.textColorGrey,
                      ),
                    ),
                    Text(
                      "${orderEntity!.totalPrice} ${S.current.Aed}",
                      style: CustomTextStyle.kTextStyleF12,
                    ),
                  ],
                ),
                Text(
                  orderEntity!.date!,
                  style: CustomTextStyle.kTextStyleF12.copyWith(
                    color: AppColors.textColorGrey,
                  ),
                ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
