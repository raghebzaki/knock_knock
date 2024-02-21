import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/orders/products/order_details/domain/entities/cancel_order_entity.dart';

import '../../domain/use_cases/cancel_order_usecase.dart';

part 'cancel_product_order_state.dart';
part 'cancel_product_order_cubit.freezed.dart';

class CancelProductOrderCubit extends Cubit<CancelProductOrderState> {
  CancelProductOrderCubit({required this.cancelOrderUseCase}) : super(const CancelProductOrderState.initial());


  static CancelProductOrderCubit get(BuildContext context) => BlocProvider.of(context);

  final CancelProductOrderUseCase cancelOrderUseCase;

  cancelOrder(CancelProductOrderEntity cancelOrderEntity) async {
    emit(const CancelProductOrderState.loading());
    final order = await cancelOrderUseCase(cancelOrderEntity);

    order.fold(
          (l) {
        emit(
          CancelProductOrderState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          CancelProductOrderState.success(r),
        );
      },
    );
  }
}
