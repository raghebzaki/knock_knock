import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:knockknock/core/shared/widgets/custom_form_field.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/cubits/product_cart_cubit/product_cart_cubit.dart';
import '../../../../../core/shared/cubits/service_cart_cubit/service_cart_cubit.dart';
import '../../../../../core/shared/entities/service_entity.dart';
import '../../../../../core/shared/widgets/custom_app_bar.dart';
import '../../../../../core/shared/widgets/custom_button_small.dart';
import '../../../../../core/shared/widgets/date_widget.dart';
import '../../../../../core/shared/widgets/state_error_widget.dart';
import '../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../core/shared/widgets/time_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../generated/l10n.dart';
import '../../../../bottom_nav_bar.dart';
import '../manager/week_days_cubit.dart';

class ServicesDetailsView extends StatefulWidget {
  final ServicesEntity servicesEntity;

  const ServicesDetailsView({super.key, required this.servicesEntity});

  @override
  State<ServicesDetailsView> createState() => _ServicesDetailsViewState();
}

class _ServicesDetailsViewState extends State<ServicesDetailsView> {
  int selectedOption = 1;

  int date = 0;

  int time = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<WeekDaysCubit>(),
      child: BlocConsumer<WeekDaysCubit, WeekDaysStates>(
        listener: (context, state) {
        },
        builder: (context, state) {
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
                      AppConstants.imageUrl + widget.servicesEntity.image!,
                      fit: BoxFit.cover,
                    ),
                    Gap(10.h),
                    Text(
                      S.of(context).details,
                      style: CustomTextStyle.kTextStyleF16Black,
                    ),
                    Html(
                      data: CacheHelper.isEnglish()
                          ? widget.servicesEntity.descriptionEn!
                          : widget.servicesEntity.descriptionAr!,
                    ),
                    const Divider(),
                    Gap(5.h),
                    widget.servicesEntity.availability == ""
                        ? const SizedBox.shrink()
                        : Row(
                            children: [
                              Text(
                                S.of(context).availability,
                                style: CustomTextStyle.kTextStyleF16Black,
                              ),
                              Text(
                                widget.servicesEntity.availability!,
                                style: CustomTextStyle.kTextStyleF16BlackW300,
                              ),
                            ],
                          ),
                    widget.servicesEntity.sku == ""
                        ? const SizedBox.shrink()
                        : Row(
                            children: [
                              Text(
                                S.of(context).sku,
                                style: CustomTextStyle.kTextStyleF16Black,
                              ),
                              Text(
                                widget.servicesEntity.sku!,
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
                    state.maybeWhen(
                      loading: () {
                        return const StateLoadingWidget();
                      },
                      success: (state) {
                        return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              ...List.generate(
                                  state.length,
                                  (index) => Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              setState(() {
                                                date = index;
                                              });
                                            },
                                            child: DateWidget(
                                                dayName:
                                                    Intl.getCurrentLocale() ==
                                                            "ar"
                                                        ? state[index].nameAr!
                                                        : state[index].nameEn!,
                                                isSelected: index == date
                                                    ? true
                                                    : false),
                                          ),
                                          Gap(10.w),
                                        ],
                                      )),
                            ],
                          ),
                        );
                      },
                      error: (errCode, err) {
                        return StateErrorWidget(
                          errCode: errCode,
                          err: err,
                        );
                      },
                      orElse: () {
                        return const SizedBox.shrink();
                      },
                    ),
                    Gap(10.h),
                    Text(
                      S.of(context).whatTimeWouldYouLikeUsToStart,
                      style: CustomTextStyle.kTextStyleF16Black,
                    ),
                    const Divider(),
                    const TimeWidget(),
                    Gap(30.h),
                    Container(
                      padding: EdgeInsets.all(20.sp),
                      decoration: BoxDecoration(
                          color: AppColors.bg,
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.sp))),
                      child: Column(
                        children: [
                          Center(
                            child: Text(
                              S
                                  .of(context)
                                  .freeCancellationUntil12HoursBeforeTheStartOfYour,
                              textAlign: TextAlign.center,
                              style: CustomTextStyle.kTextStyleF14SubBlack,
                            ),
                          ),
                          Gap(10.h),
                          Align(
                            alignment: CacheHelper.isEnglish()
                                ? Alignment.bottomRight
                                : Alignment.bottomLeft,
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (ctx) {
                                    return AlertDialog(
                                      content: Text(
                                        S
                                            .of(context)
                                            .freeCancellationUntil12HoursBeforeTheStartOfYour,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyle
                                            .kTextStyleF14SubBlack,
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                S.of(context).details,
                                textAlign: TextAlign.start,
                                style: CustomTextStyle.kTextStyleF16w600,
                              ),
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
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.sp))),
                      child: Column(
                        children: [
                          Align(
                            alignment: CacheHelper.isEnglish()
                                ? Alignment.topLeft
                                : Alignment.topRight,
                            child: Text(
                              S.of(context).anySpecificInstructions,
                              textAlign: TextAlign.start,
                              style: CustomTextStyle.kTextStyleF14SubBlack,
                            ),
                          ),
                          Gap(10.h),
                          Align(
                            alignment: CacheHelper.isEnglish()
                                ? Alignment.bottomRight
                                : Alignment.bottomLeft,
                            child: TextButton(
                              onPressed: () {
                                showDialog(
                                  context: context,
                                  builder: (ctx) {
                                    return AlertDialog(
                                      title: Text(
                                        S.of(context).anySpecificInstructions,
                                        textAlign: TextAlign.start,
                                      ),
                                      titleTextStyle:
                                          CustomTextStyle.kTextStyleF14SubBlack,
                                      content: CustomFormField(
                                        hint: S.of(context).instructions,
                                        isObscure: false,
                                        maxLines: null,
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Text(
                                S.of(context).add,
                                textAlign: TextAlign.start,
                                style: CustomTextStyle.kTextStyleF16w600,
                              ),
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
                                  "${widget.servicesEntity.price} ${S.of(context).Aed}",
                                  style: CustomTextStyle.kTextStyleF18Black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          constraints:
                              BoxConstraints(maxWidth: context.width / 2),
                          child: CustomBtnSmall(
                            onPressed: () {
                              context
                                  .read<ProductCartCubit>()
                                  .cartProducts
                                  .clear();
                              context.read<ServiceCartCubit>().addServiceToCart(
                                  widget.servicesEntity, context);
                              context.pushNamed(servicesCartPageRoute);
                            },
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
        },
      ),
    );
  }
}
