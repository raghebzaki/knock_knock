import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/orders/services/my_services_orders/presentation/manager/my_services_orders_cubit.dart';

import '../../../../../../config/themes/app_text_styles.dart';
import '../../../../../../core/router/router.dart';
import '../../../../../../core/shared/models/user_data_model.dart';
import '../../../../../../core/shared/widgets/state_error_widget.dart';
import '../../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../domain/entities/services_order_entity.dart';
import '../widgets/order_container.dart';

class MyServicesOrdersView extends StatefulWidget {
  const MyServicesOrdersView({super.key});

  @override
  State<MyServicesOrdersView> createState() => _MyServicesOrdersViewState();
}

class _MyServicesOrdersViewState extends State<MyServicesOrdersView> {
  ScrollController scrollController = ScrollController();
  int nextPage = 1;
  bool isLoading = false;

  void scrollListener() async {
    var currentPositions = scrollController.position.pixels;
    var maxScrollLength = scrollController.position.maxScrollExtent;
    if (currentPositions >= 0.7 * maxScrollLength) {
      if (!isLoading) {
        isLoading = true;
        await BlocProvider.of<MyServicesOrdersCubit>(context)
            .getMyOrders(ServicesOrderEntity(status: 0,userId: UserData.id),++nextPage);
        isLoading = false;
      }
    }
  }

  List<ServicesOrderEntity> ordersList = [];

  @override
  void initState() {
    super.initState();
    scrollController.addListener(scrollListener);
  }

  @override
  void dispose() {
    ordersList.clear();
    super.dispose();
  }
  int status = 0;
  List<String> statusList = [
    S.current.pending,
    S.current.processing,
    S.current.done_status,
    S.current.cancelled_status,
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MyServicesOrdersCubit, MyServicesOrdersState>(
      listener: (context, state) {
        state.maybeWhen(
          success: (state) {
            ordersList.addAll(state);
          },
          orElse: () {
            return null;
          },
        );
      },
      builder: (context, state) {
        MyServicesOrdersCubit ordersCubit = MyServicesOrdersCubit.get(context);
        return PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            if (didPop) return;
            context.pushNamed(bottomNavBarPageRoute);
          },
          child: Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              title: Text(S.of(context).my_orders),
            ),
            body: SafeArea(
              child: Column(
                children: [
                  Gap(20.h),
                  Padding(
                    padding: const EdgeInsets.all(
                      Dimensions.p16,
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                status = 0;
                              });
                              ordersList.clear();
                              nextPage=1;
                              ordersCubit.getMyOrders(
                                ServicesOrderEntity(
                                  userId: UserData.id,
                                  status: status,
                                ) ,nextPage
                              );
                            },
                            child: Container(
                              height: 35.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.p16.w,
                                  vertical: Dimensions.p5.h),
                              decoration: BoxDecoration(
                                color: status == 0
                                    ? AppColors.secondary
                                    : AppColors.primary,
                                borderRadius:
                                BorderRadius.circular(Dimensions.r10),
                                border: Border.all(
                                  color: AppColors.secondary,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  S.of(context).pending,
                                  style:
                                  CustomTextStyle.kTextStyleF14.copyWith(
                                    color: status == 0
                                        ? AppColors.primary
                                        : AppColors.secondary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(10.h),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                status = 1;
                              });
                              ordersList.clear();
                              nextPage=1;
                              ordersCubit.getMyOrders(
                                ServicesOrderEntity(
                                  userId: UserData.id,
                                  status: status,

                                ),nextPage
                              );
                            },
                            child: Container(
                              height: 35.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.p16.w,
                                  vertical: Dimensions.p5.h),
                              decoration: BoxDecoration(
                                color: status == 1
                                    ? AppColors.secondary
                                    : AppColors.primary,
                                borderRadius:
                                BorderRadius.circular(Dimensions.r10),
                                border: Border.all(
                                  color: AppColors.secondary,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  S.current.processing,
                                  style:
                                  CustomTextStyle.kTextStyleF14.copyWith(
                                    color: status == 1
                                        ? AppColors.primary
                                        : AppColors.secondary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(10.h),

                          GestureDetector(
                            onTap: () {
                              setState(() {
                                status = 2;
                              });
                              ordersList.clear();
                              nextPage=1;
                              ordersCubit.getMyOrders(
                                ServicesOrderEntity(
                                  userId: UserData.id,
                                  status: status,
                                ),nextPage
                              );
                            },
                            child: Container(
                              height: 35.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.p16.w,
                                  vertical: Dimensions.p5.h),
                              decoration: BoxDecoration(
                                color: status == 2
                                    ? AppColors.secondary
                                    : AppColors.primary,
                                borderRadius:
                                BorderRadius.circular(Dimensions.r10),
                                border: Border.all(
                                  color: AppColors.secondary,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  S.current.done_status,
                                  style:
                                  CustomTextStyle.kTextStyleF14.copyWith(
                                    color: status == 2
                                        ? AppColors.primary
                                        : AppColors.secondary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Gap(10.h),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                status = 3;
                              });
                              ordersList.clear();
                              nextPage=1;
                              ordersCubit.getMyOrders(
                                ServicesOrderEntity(
                                  userId: UserData.id,
                                  status: status,
                                ),nextPage
                              );
                            },
                            child: Container(
                              height: 35.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: Dimensions.p16.w,
                                  vertical: Dimensions.p5.h),
                              decoration: BoxDecoration(
                                color: status == 3
                                    ? AppColors.secondary
                                    : AppColors.primary,
                                borderRadius:
                                BorderRadius.circular(Dimensions.r10),
                                border: Border.all(
                                  color: AppColors.secondary,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  S.current.cancelled_status,
                                  style:
                                  CustomTextStyle.kTextStyleF14.copyWith(
                                    color: status == 3
                                        ? AppColors.primary
                                        : AppColors.secondary,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(20.h),
                  state.maybeWhen(
                    loading: (){
                      return const Expanded(child: StateLoadingWidget());
                    },
                    success: (state){
                      return ordersList.isNotEmpty?Expanded(
                        child: ListView.builder(
                          controller: scrollController,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: ordersList.length,
                          itemBuilder: (ctx, index) {
                            return  Container(
                                margin:
                                const EdgeInsets.symmetric(vertical: Dimensions.p8,horizontal: Dimensions.p16),
                                child:  OrderContainer(
                                  orderEntity:ordersList[index],
                                ));
                          },
                        ),
                      ):Expanded(child: Center(child: Text("${S.of(context).no} ${statusList[status]} ${S.of(context).orders}",style: CustomTextStyle.kTextStyleF20,),));
                    },
                    paginationLoading: (){
                      return ordersList.isNotEmpty?Expanded(
                        child: ListView.builder(
                          controller: scrollController,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: ordersList.length,
                          itemBuilder: (ctx, index) {
                            return  Container(
                                margin:
                                const EdgeInsets.symmetric(vertical: Dimensions.p8,horizontal: Dimensions.p16),
                                child:  OrderContainer(
                                  orderEntity:ordersList[index],
                                ));
                          },
                        ),
                      ):Expanded(child: Center(child: Text("${S.of(context).no} ${statusList[status]} ${S.of(context).orders}",style: CustomTextStyle.kTextStyleF20,),));
                    },
                    paginationError: (err,errCode){
                      return ordersList.isNotEmpty?Expanded(
                        child: ListView.builder(
                          controller: scrollController,
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          itemCount: ordersList.length,
                          itemBuilder: (ctx, index) {
                            return  Container(
                                margin:
                                const EdgeInsets.symmetric(vertical: Dimensions.p8,horizontal: Dimensions.p16),
                                child:  OrderContainer(
                                  orderEntity:ordersList[index],
                                ));
                          },
                        ),
                      ):Expanded(child: Center(child: Text("${S.of(context).no} ${statusList[status]} ${S.of(context).orders}",style: CustomTextStyle.kTextStyleF20,),));
                    },
                    error: (err,errCode) {
                      return StateErrorWidget(
                        errCode: errCode,
                        err: err,
                      );
                    },
                    orElse: (){
                        return const SizedBox.shrink();
                      },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

}
