import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/coupon_entity.dart';
import '../../domain/use_cases/services_coupon_use_case.dart';

part 'services_coupon_state.dart';
part 'services_coupon_cubit.freezed.dart';

class ServicesCouponCubit extends Cubit<ServicesCouponState> {
  ServicesCouponCubit({required this.couponUseCase}) : super(const ServicesCouponState.initial());

  static ServicesCouponCubit get(BuildContext context) => BlocProvider.of(context);

  final ServicesCouponUseCase couponUseCase;

  applyCoupon(ServicesCouponEntity couponEntity) async {
    emit(const ServicesCouponState.loading());
    final login = await couponUseCase(couponEntity);

    login.fold(
          (l) {
        emit(
          ServicesCouponState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          ServicesCouponState.success(r),
        );
      },
    );
  }
}
