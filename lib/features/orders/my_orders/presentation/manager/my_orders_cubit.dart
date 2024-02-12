import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../../core/shared/entities/order_entity.dart';
import '../../domain/use_cases/my_orders_usecase.dart';

part 'my_orders_state.dart';

part 'my_orders_cubit.freezed.dart';

class MyOrdersCubit extends Cubit<MyOrdersStates> {
  MyOrdersCubit({required this.myOrdersUseCase})
      : super(const MyOrdersStates.initial());

  static MyOrdersCubit get(BuildContext context) => BlocProvider.of(context);

  final MyOrdersUseCase myOrdersUseCase;

  getMyOrders(OrderEntity myOrdersEntity) async {
    emit(const MyOrdersStates.loading());
    final login = await myOrdersUseCase(myOrdersEntity);

    login.fold(
      (l) {
        emit(
          MyOrdersStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
      (r) async {
        emit(
          MyOrdersStates.success(r),
        );
      },
    );
  }
}
