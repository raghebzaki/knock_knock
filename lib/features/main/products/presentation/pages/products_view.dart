import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';
import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';
import 'package:knockknock/core/shared/widgets/product_item.dart';
import 'package:knockknock/features/bottom_nav_bar.dart';
import 'package:knockknock/features/main/products/presentation/manager/products_cubit.dart';

import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/shared/widgets/state_error_widget.dart';
import '../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';

class ProductsView extends StatefulWidget {
  final num categoryId;

  const ProductsView({super.key, required this.categoryId});

  @override
  State<ProductsView> createState() => _ProductsViewState();
}

class _ProductsViewState extends State<ProductsView> {
  ScrollController scrollController = ScrollController();
  int nextPage = 1;
  bool isLoading = false;

  void scrollListener() async {
    var currentPositions = scrollController.position.pixels;
    var maxScrollLength = scrollController.position.maxScrollExtent;
    if (currentPositions >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<ProductsCubit>(context)
            .getAllProducts(nextPage, widget.categoryId);
        isLoading = false;
      }
    }
  }

  List<ProductEntity> productsList = [];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    productsList.clear();
    super.dispose();
  }

  TextEditingController searchCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductsCubit, ProductsState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (state) {
            productsList.addAll(state!);
          },
          orElse: () {
            return null;
          },
        );
      },
      builder: (context, state) {
        ProductsCubit productsCubit = ProductsCubit.get(context);
        return Scaffold(
          appBar: CustomAppBar(
            searchBar: true,
            searchCtrl: searchCtrl,
            onSubmitted: (value) {
              productsCubit.searchInProducts(nextPage, searchCtrl.text);
            },
          ),
          bottomNavigationBar: const BottomNavForAllScreenView(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Gap(15.h),
                Container(
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
                              S.current.products,
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
                          return AutoHeightGridView(
                            controller: scrollController,
                            itemCount: productsList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ProductItem(
                                productEntity: productsList[index],
                              );
                            },
                          );
                        },
                        paginationLoading: () {
                          return AutoHeightGridView(
                            controller: scrollController,
                            itemCount: productsList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ProductItem(
                                productEntity: productsList[index],
                              );
                            },
                          );
                        },
                        paginationError: (errCode, err) {
                          return AutoHeightGridView(
                            controller: scrollController,
                            itemCount: productsList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ProductItem(
                                productEntity: productsList[index],
                              );
                            },
                          );
                        },
                        searchLoading: () {
                          return const StateLoadingWidget();
                        },
                        searchSuccess: (state) {
                          return AutoHeightGridView(
                            controller: scrollController,
                            itemCount: productsList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ProductItem(
                                productEntity: productsList[index],
                              );
                            },
                          );
                        },
                        searchError: (errCode, err) {
                          return StateErrorWidget(
                            errCode: errCode!,
                            err: err!,
                          );
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
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
