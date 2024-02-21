import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/services_order_entity.dart';
import '../../domain/use_cases/my_services_orders_usecase.dart';

part 'my_services_orders_state.dart';
part 'my_services_orders_cubit.freezed.dart';

class MyServicesOrdersCubit extends Cubit<MyServicesOrdersState> {
  MyServicesOrdersCubit({required this.myOrdersUseCase})
      : super(const MyServicesOrdersState.initial());

  static MyServicesOrdersCubit get(BuildContext context) =>
      BlocProvider.of(context);

  final MyServicesOrdersUseCase myOrdersUseCase;

  getMyOrders(ServicesOrderEntity myOrdersEntity, int? nextPage) async {
    if (nextPage == 1) {
      emit(const MyServicesOrdersState.loading());
    } else {
      emit(const MyServicesOrdersState.paginationLoading());
    }
    final login = await myOrdersUseCase(myOrdersEntity, nextPage);

    login.fold(
      (l) {
        if (nextPage == 1) {
          emit(
            MyServicesOrdersState.error(
              l.code.toString(),
              l.message,
            ),
          );
        } else {
          emit(
            MyServicesOrdersState.paginationError(
              l.code.toString(),
              l.message,
            ),
          );
        }
      },
      (r) async {
        emit(
          MyServicesOrdersState.success(r),
        );
      },
    );
  }
}
