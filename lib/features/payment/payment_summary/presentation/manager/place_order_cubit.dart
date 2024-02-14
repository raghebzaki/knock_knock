import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/place_order_entity.dart';
import '../../domain/use_cases/place_order_use_case.dart';

part 'place_order_cubit.freezed.dart';
part 'place_order_states.dart';

class PlaceOrderCubit extends Cubit<PlaceOrderStates> {
  PlaceOrderCubit({required this.placeOrderUseCase})
      : super(const PlaceOrderStates.initial());

  static PlaceOrderCubit get(BuildContext context) => BlocProvider.of(context);

  final PlaceOrderUseCase placeOrderUseCase;

  placeOrder(PlaceOrderEntity placeOrderEntity) async {
    emit(const PlaceOrderStates.loading());
    final login = await placeOrderUseCase(placeOrderEntity);

    login.fold(
      (l) {
        emit(
          PlaceOrderStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
      (r) async {
        emit(
          PlaceOrderStates.success(r),
        );
      },
    );
  }
}
