import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/products_order_entity.dart';
import '../../domain/use_cases/my_products_orders_usecase.dart';

part 'my_orders_state.dart';

part 'my_orders_cubit.freezed.dart';

class MyOrdersCubit extends Cubit<MyOrdersStates> {
  MyOrdersCubit({required this.myOrdersUseCase})
      : super(const MyOrdersStates.initial());

  static MyOrdersCubit get(BuildContext context) => BlocProvider.of(context);

  final MyOrdersUseCase myOrdersUseCase;

  getMyOrders(ProductsOrderEntity myOrdersEntity,num? nextPage) async {
    if (nextPage == 1) {
      emit(const MyOrdersStates.loading());
    } else {
      emit(const MyOrdersStates.paginationLoading());
    }
    final login = await myOrdersUseCase(myOrdersEntity,nextPage);

    login.fold(
      (l) {
        if (nextPage == 1) {
          emit(
            MyOrdersStates.error(
              l.code.toString(),
              l.message,
            ),
          );
        } else {
          emit(
            MyOrdersStates.paginationError(
              l.code.toString(),
              l.message,
            ),
          );
        }
      },
      (r) async {
        emit(
          MyOrdersStates.success(r),
        );
      },
    );
  }
}
