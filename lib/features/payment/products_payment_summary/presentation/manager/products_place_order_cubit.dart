import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/products_place_order_entity.dart';
import '../../domain/use_cases/products_place_order_after_payment_use_case.dart';
import '../../domain/use_cases/products_place_order_use_case.dart';

part 'products_place_order_state.dart';
part 'products_place_order_cubit.freezed.dart';

class ProductsPlaceOrderCubit extends Cubit<ProductsPlaceOrderState> {
  ProductsPlaceOrderCubit({required this.placeOrderUseCase,required this.placeOrderAfterPaymentUseCase}) : super(const ProductsPlaceOrderState.initial());
  static ProductsPlaceOrderCubit get(BuildContext context) => BlocProvider.of(context);

  final ProductsPlaceOrderUseCase placeOrderUseCase;

  placeOrder(ProductsPlaceOrderEntity placeOrderEntity) async {
    emit(const ProductsPlaceOrderState.loading());
    final login = await placeOrderUseCase(placeOrderEntity);

    login.fold(
          (l) {
        emit(
          ProductsPlaceOrderState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          ProductsPlaceOrderState.success(r),
        );
      },
    );
  }
  final ProductsPlaceOrderAfterPaymentUseCase placeOrderAfterPaymentUseCase;

  placeOrderAfterPayment(ProductsPlaceOrderEntity placeOrderEntity) async {
    emit(const ProductsPlaceOrderState.loading());
    final login = await placeOrderAfterPaymentUseCase(placeOrderEntity);

    login.fold(
          (l) {
        emit(
          ProductsPlaceOrderState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          ProductsPlaceOrderState.success(r),
        );
      },
    );
  }
}
