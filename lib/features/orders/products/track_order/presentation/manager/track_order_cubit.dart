import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cancel_order_entity.dart';
import '../../domain/entities/track_order_entity.dart';
import '../../domain/use_cases/cancel_order_usecase.dart';
import '../../domain/use_cases/track_order_usecase.dart';

part 'track_order_state.dart';
part 'track_order_cubit.freezed.dart';

class TrackOrderCubit extends Cubit<TrackOrderStates> {
  TrackOrderCubit({required this.trackOrderUseCase, required this.cancelOrderUseCase}) : super(const TrackOrderStates.initial());

  static TrackOrderCubit get(BuildContext context) => BlocProvider.of(context);

  final TrackOrderUseCase trackOrderUseCase;

  trackOrder(TrackOrderEntity trackOrderEntity) async {
    emit(const TrackOrderStates.loading());
    final order = await trackOrderUseCase(trackOrderEntity);

    order.fold(
          (l) {
        emit(
          TrackOrderStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          TrackOrderStates.success(r),
        );

      },
    );
  }

  final CancelOrderUseCase cancelOrderUseCase;

  cancelOrder(CancelOrderEntity cancelOrderEntity) async {
    emit(const TrackOrderStates.loading());
    final order = await cancelOrderUseCase(cancelOrderEntity);

    order.fold(
          (l) {
        emit(
          TrackOrderStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          TrackOrderStates.cancelSuccess(r),
        );

      },
    );
  }

}
