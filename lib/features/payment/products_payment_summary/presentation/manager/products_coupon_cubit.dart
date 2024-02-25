import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/payment/products_payment_summary/domain/entities/products_coupon_entity.dart';

import '../../domain/use_cases/products_coupon_use_case.dart';

part 'products_coupon_state.dart';
part 'products_coupon_cubit.freezed.dart';

class ProductsCouponCubit extends Cubit<ProductsCouponState> {
  ProductsCouponCubit({required this.couponUseCase}) : super(const ProductsCouponState.initial());

  static ProductsCouponCubit get(BuildContext context) => BlocProvider.of(context);

  final ProductsCouponUseCase couponUseCase;

  applyCoupon(ProductsCouponEntity couponEntity) async {
    emit(const ProductsCouponState.loading());
    final login = await couponUseCase(couponEntity);

    login.fold(
          (l) {
        emit(
          ProductsCouponState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          ProductsCouponState.success(r),
        );
      },
    );
  }
}
