import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cancel_order_entity.dart';
import '../../domain/use_cases/cancel_order_usecase.dart';

part 'service_cancel_order_state.dart';
part 'service_cancel_order_cubit.freezed.dart';

class ServiceCancelOrderCubit extends Cubit<ServiceCancelOrderState> {
  ServiceCancelOrderCubit({required this.cancelOrderUseCase}) : super(const ServiceCancelOrderState.initial());

  static ServiceCancelOrderCubit get(BuildContext context) => BlocProvider.of(context);

  final CancelServiceOrderUseCase cancelOrderUseCase;

  cancelOrder(CancelServiceOrderEntity cancelOrderEntity) async {
    emit(const ServiceCancelOrderState.loading());
    final order = await cancelOrderUseCase(cancelOrderEntity);

    order.fold(
          (l) {
        emit(
          ServiceCancelOrderState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          ServiceCancelOrderState.success(r),
        );

      },
    );
  }
}
