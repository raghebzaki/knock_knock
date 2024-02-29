import 'package:auto_height_grid_view/auto_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/shared/entities/service_entity.dart';
import 'package:knockknock/core/shared/widgets/custom_app_bar.dart';
import 'package:knockknock/core/shared/widgets/service_item.dart';
import 'package:knockknock/features/main/home/presentation/manager/services_cubit.dart';
import '../../../../../config/themes/app_text_styles.dart';
import '../../../../../core/shared/widgets/state_error_widget.dart';
import '../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../core/utils/app_colors.dart';
import '../../../../../generated/l10n.dart';
import '../../../../bottom_nav_bar.dart';

class ServicesView extends StatefulWidget {
  const ServicesView({super.key});

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  ScrollController scrollController = ScrollController();
  int nextPage = 1;
  bool isLoading = false;

  void scrollListener() async {
    var currentPositions = scrollController.position.pixels;
    var maxScrollLength = scrollController.position.maxScrollExtent;
    if (currentPositions >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<ServicesCubit>(context)
            .getAllServices(++nextPage);
        isLoading = false;
      }
    }
  }
  TextEditingController searchCtrl = TextEditingController();

  List<ServicesEntity> servicesList = [];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    servicesList.clear();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ServicesCubit, ServicesState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (state) {
            servicesList.addAll(state!);
          },
          searchSuccess:(state) {
            servicesList.clear();
            servicesList.addAll(state!);
          } ,
          orElse: () {
            return null;
          },
        );
      },
      builder: (context, state) {
        ServicesCubit servicesCubit=ServicesCubit.get(context);
        return Scaffold(
          appBar: CustomAppBar(searchBar: true,
            searchCtrl: searchCtrl,
            onChange: (value) {
            if(searchCtrl.text.isNotEmpty){
              servicesCubit.searchInServices(searchCtrl.text, 1);
            }else{
              servicesList.clear();
              nextPage=1;
              servicesCubit.getAllServices(nextPage);
            }
            },),
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
                            Text(S.current.services,
                              style: CustomTextStyle.kTextStyleF20Black,),
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
                            itemCount: servicesList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ServiceItem(
                                servicesEntity: servicesList[index],
                              );
                            },
                          );
                        },
                        paginationLoading: () {
                          return AutoHeightGridView(
                            controller: scrollController,
                            itemCount: servicesList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ServiceItem(
                                servicesEntity: servicesList[index],
                              );
                            },
                          );
                          },
                        paginationError: (errCode, err) {
                          return AutoHeightGridView(
                            controller: scrollController,
                            itemCount: servicesList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ServiceItem(
                                servicesEntity: servicesList[index],
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
                            itemCount: servicesList.length,
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(12),
                            shrinkWrap: true,
                            builder: (context, index) {
                              return ServiceItem(
                                servicesEntity: servicesList[index],
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
