import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/services_place_order_entity.dart';
import '../../domain/use_cases/services_place_order_use_case.dart';

part 'services_place_order_state.dart';
part 'services_place_order_cubit.freezed.dart';

class ServicesPlaceOrderCubit extends Cubit<ServicesPlaceOrderState> {
  ServicesPlaceOrderCubit({required this.placeOrderUseCase}) : super(const ServicesPlaceOrderState.initial());

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
}
