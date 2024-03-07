import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/payment/services_payment_summary/domain/use_cases/services_place_order_after_payment_use_case.dart';

import '../../domain/entities/services_place_order_entity.dart';
import '../../domain/use_cases/services_place_order_use_case.dart';

part 'services_place_order_state.dart';
part 'services_place_order_cubit.freezed.dart';

class ServicesPlaceOrderCubit extends Cubit<ServicesPlaceOrderState> {
  ServicesPlaceOrderCubit({required this.placeOrderUseCase,required this.placeOrderAfterPaymentUseCase}) : super(const ServicesPlaceOrderState.initial());

  static ServicesPlaceOrderCubit get(BuildContext context) => BlocProvider.of(context);

  final ServicesPlaceOrderUseCase placeOrderUseCase;

  placeOrder(ServicesPlaceOrderEntity placeOrderEntity) async {
    emit(const ServicesPlaceOrderState.loading());
    final login = await placeOrderUseCase(placeOrderEntity);

    login.fold(
          (l) {
        emit(
          ServicesPlaceOrderState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          ServicesPlaceOrderState.success(r),
        );
      },
    );
  }
  final ServicesPlaceOrderAfterPaymentUseCase placeOrderAfterPaymentUseCase;

  placeOrderAfterPayment(ServicesPlaceOrderEntity placeOrderEntity) async {
    emit(const ServicesPlaceOrderState.loading());
    final login = await placeOrderAfterPaymentUseCase(placeOrderEntity);

    login.fold(
          (l) {
        emit(
          ServicesPlaceOrderState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          ServicesPlaceOrderState.success(r),
        );
      },
    );
  }
}
