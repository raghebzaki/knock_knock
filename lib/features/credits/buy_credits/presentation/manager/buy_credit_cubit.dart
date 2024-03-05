import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/buy_credit_place_order_entity.dart';
import '../../domain/use_cases/add_credit_place_order_use_case.dart';
import '../../domain/use_cases/buy_credit_place_order_use_case.dart';

part 'buy_credit_state.dart';
part 'buy_credit_cubit.freezed.dart';

class BuyCreditCubit extends Cubit<BuyCreditState> {
  BuyCreditCubit({required this.addCreditPlaceOrderUseCase, required this.placeOrderUseCase}) : super(const BuyCreditState.initial());
  static BuyCreditCubit get(BuildContext context) => BlocProvider.of(context);

  final BuyCreditPlaceOrderUseCase placeOrderUseCase;

  buyCredits(BuyCreditPlaceOrderEntity placeOrderEntity) async {
    emit(const BuyCreditState.loading());
    final login = await placeOrderUseCase(placeOrderEntity);

    login.fold(
          (l) {
        emit(
          BuyCreditState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          BuyCreditState.success(r),
        );
      },
    );
  }

  final AddCreditPlaceOrderUseCase addCreditPlaceOrderUseCase;

  addCredits(BuyCreditPlaceOrderEntity placeOrderEntity) async {
    emit(const BuyCreditState.loading());
    final login = await addCreditPlaceOrderUseCase(placeOrderEntity);

    login.fold(
          (l) {
        emit(
          BuyCreditState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          BuyCreditState.success(r),
        );
      },
    );
  }
}
