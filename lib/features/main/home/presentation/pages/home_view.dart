import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/config/themes/app_text_styles.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';
import 'package:knockknock/core/shared/widgets/product_category_item.dart.dart';
import 'package:knockknock/core/shared/widgets/state_error_widget.dart';
import 'package:knockknock/core/shared/widgets/state_loading_widget.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/main/home/presentation/manager/carousel_cubit.dart';
import 'package:knockknock/features/main/home/presentation/manager/services_cubit.dart';
import 'package:knockknock/features/main/home/presentation/widgets/ads_item.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../core/shared/widgets/service_item.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../core/utils/dimensions.dart';
import '../../../../../generated/l10n.dart';
import '../manager/products_category_cubit.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  PageController adsCtrl = PageController();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.di<CarouselCubit>()..getAds(),
        ),
        BlocProvider(
          create: (context) => di.di<ServicesCubit>()..getAllServices(1),
        ),
        BlocProvider(
          create: (context) => di.di<ProductsCategoryCubit>()..getProductsCategory(),
        ),
      ],
      child: Scaffold(
        backgroundColor: AppColors.primary,
        appBar: const CustomAppBar(searchBar: false),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                BlocConsumer<CarouselCubit, CarouselState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return state.maybeWhen(
                      success: (state) {
                        return CarouselSlider(
                          options: CarouselOptions(
                            aspectRatio: 2,
                            autoPlay: true,
                            autoPlayInterval: const Duration(seconds: 10),
                            autoPlayAnimationDuration: const Duration(milliseconds: 800),
                            autoPlayCurve: Curves.fastOutSlowIn,
                            viewportFraction: 1
                          ),
                          items: state!.map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: Dimensions.p16.w,
                                    vertical: Dimensions.p5.h,
                                  ),
                                  color: Colors.white,
                                  child: AdsItem(
                                    carousel: i,
                                  ),
                                );
                              },
                            );
                          }).toList(),
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
                BlocConsumer<ServicesCubit, ServicesState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.0.w, vertical: 10.h),
                            child: Row(
                              children: [
                                Text(
                                  S.current.services,
                                  style: CustomTextStyle.kTextStyleF20Black,
                                ),
                                const Spacer(),
                                TextButton(
                                  onPressed: () {
                                    context.pushNamed(servicesPageRoute);
                                  },
                                  child: Text(S.current.seeMore,
                                      style: CustomTextStyle.kTextStyleF12Black
                                          .copyWith(
                                              fontWeight: FontWeight.w300)),
                                ),
                              ],
                            ),
                          ),
                          state.maybeWhen(
                            loading: () {
                              return const StateLoadingWidget();
                            },
                            success: (state) {
                              return  AutoHeightGridView(
                                crossAxisSpacing: 10.w,
                                shrinkWrap: true,
                                physics:
                                const NeverScrollableScrollPhysics(),
                                itemCount: state!.length,
                                builder: (ctx, index) {
                                  return  ServiceItem(servicesEntity: state[index],);
                                },
                              );
                            },
                            error: (errCode, err) {
                              return StateErrorWidget(
                                  errCode: errCode!, err: err!);
                            },
                            orElse: () {
                              return const SizedBox.shrink();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Gap(15.h),
                BlocConsumer<ProductsCategoryCubit, ProductsCategoryState>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Container(
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 12.0.w, vertical: 10.h),
                            child: Row(
                              children: [
                                Text(
                                  S.of(context).productsCategories,
                                  style: CustomTextStyle.kTextStyleF20Black,
                                ),
                              ],
                            ),
                          ),
                          state.maybeWhen(
                            loading: () {
                              return const StateLoadingWidget();
                            },
                            success: (state) {
                              return  AutoHeightGridView(
                                crossAxisSpacing: 10.w,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: state!.length,
                                builder: (ctx, index) {
                                  return   ProductCategoryItem(productsCategoryEntity: state[index], );
                                },
                              );
                            },
                            error: (errCode, err) {
                              return StateErrorWidget(
                                  errCode: errCode!, err: err!);
                            },
                            orElse: () {
                              return const SizedBox.shrink();
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
