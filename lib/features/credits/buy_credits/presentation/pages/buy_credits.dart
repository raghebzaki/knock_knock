import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/helpers/cache_helper.dart';
import 'package:knockknock/core/shared/models/user_data_model.dart';
import 'package:knockknock/core/shared/widgets/custom_button_small.dart';
import 'package:knockknock/core/utils/app_colors.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/credits/buy_credits/domain/entities/buy_credit_place_order_entity.dart';
import 'package:knockknock/features/credits/buy_credits/presentation/manager/buy_credit_cubit.dart';
import 'package:knockknock/features/credits/buy_credits/presentation/manager/package_cubit.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/service/get_balance.dart';
import '../../../../../core/shared/widgets/state_error_widget.dart';
import '../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../generated/l10n.dart';

import '../../../../main/credits/presentation/pages/web_view.dart';


class BuyCreditsView extends StatefulWidget {
  const BuyCreditsView({super.key});

  @override
  State<BuyCreditsView> createState() => _BuyCreditsViewState();
}

class _BuyCreditsViewState extends State<BuyCreditsView> {

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.di<PackageCubit>()..getAllPackage(),
        ),
        BlocProvider(
          create: (context) => di.di<BuyCreditCubit>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: AppColors.secondary),
          title: Text(
            S.of(context).payLessGetMore,
            style: CustomTextStyle.kTextStyleF24,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0.sp),
                child: Text(
                  S.of(context).selectAPackageThatSuitsYouBestAndEarnUp,
                  style: CustomTextStyle.kTextStyleF12,
                  textAlign: TextAlign.center,
                ),
              ),
              const Divider(
                color: AppColors.secondary,
              ),
              Gap(20.h),
              BlocConsumer<PackageCubit, PackageState>(
                listener: (context, state) {},
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (state) {
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            ...List.generate(
                              state!.length,
                              (index) => Container(
                                width: 300.w,
                                padding: EdgeInsets.symmetric(
                                    vertical: 10.h, horizontal: 16.w),
                                margin: CacheHelper.isEnglish()
                                    ? EdgeInsets.only(left: 16.w)
                                    : EdgeInsets.only(right: 16.w),
                                decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  color: AppColors.secondaryLight,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      CacheHelper.isEnglish()
                                          ? state[index].nameEn!
                                          : state[index].nameAr!,
                                      style: CustomTextStyle.kTextStyleF16w600,
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(10.h),
                                    Text(
                                      "${S.of(context).Aed} ${state[index].price}",
                                      style: CustomTextStyle.kTextStyleF12
                                          .copyWith(
                                        color: AppColors.secondaryWithOpacity,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: AppColors.greyColor,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(10.h),
                                    Text(
                                      "${S.of(context).Aed} ${state[index].discountPrice}",
                                      style: CustomTextStyle.kTextStyleF16w600,
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(10.h),
                                    Text(
                                      CacheHelper.isEnglish()
                                          ? state[index].notesEn!
                                          : state[index].notesAr!,
                                      style: CustomTextStyle.kTextStyleF12,
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(10.h),
                                    Text(
                                      S.of(context).earn8More,
                                      style: CustomTextStyle.kTextStyleF12,
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(10.h),
                                    Text(
                                      state[index].expireDate!,
                                      style: CustomTextStyle.kTextStyleF12
                                          .copyWith(
                                              color: AppColors
                                                  .secondaryWithOpacity),
                                      textAlign: TextAlign.center,
                                    ),
                                    Gap(10.h),
                                    BlocConsumer<BuyCreditCubit,
                                        BuyCreditState>(
                                      listener: (context, buyState) {
                                        UserBalanceService.getBalance();
                                        buyState.maybeWhen(
                                          success: (buyState) async {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                builder: (context) =>  WebViewPayment(url: buyState.paymentLink!,packageId: state[index].id!),
                                              ),
                                            );

                                          },
                                          error: (errCode, err) {
                                            context.defaultSnackBar(
                                                "${S.current.err_code}: $errCode, $err");
                                          },
                                          orElse: () {
                                            return null;
                                          },
                                        );
                                      },
                                      builder: (context, buyState) {
                                        BuyCreditCubit buyCreditCubit =
                                            BuyCreditCubit.get(context);
                                        return CustomBtnSmall(
                                          label: S.of(context).buyNow,
                                          onPressed: () {
                                            buyCreditCubit.buyCredits(
                                              BuyCreditPlaceOrderEntity(
                                                  userId: UserData.id,
                                                  packageId: state[index].id),
                                            );
                                          },
                                        );
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    loading: () {
                      return const StateLoadingWidget();
                    },
                    error: (errCode, err) {
                      return StateErrorWidget(
                        errCode: errCode!,
                        err: err!,
                      );
                    },
                    orElse: () {
                      return const SizedBox.shrink();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
