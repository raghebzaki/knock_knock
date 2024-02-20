import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/cancel_order_entity.dart';
import '../../domain/entities/track_order_entity.dart';
import '../../domain/use_cases/cancel_order_usecase.dart';
import '../../domain/use_cases/track_order_usecase.dart';

part 'track_order_state.dart';
part 'track_order_cubit.freezed.dart';

class TrackServicesOrderCubit extends Cubit<TrackServicesOrderStates> {
  TrackServicesOrderCubit({required this.trackOrderUseCase, required this.cancelOrderUseCase}) : super(const TrackServicesOrderStates.initial());

  static TrackServicesOrderCubit get(BuildContext context) => BlocProvider.of(context);

  final TrackServicesOrderUseCase trackOrderUseCase;

  trackOrder(TrackServicesOrderEntity trackOrderEntity) async {
    emit(const TrackServicesOrderStates.loading());
    final order = await trackOrderUseCase(trackOrderEntity);

    order.fold(
          (l) {
        emit(
          TrackServicesOrderStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          TrackServicesOrderStates.success(r),
        );

      },
    );
  }

  final CancelServicesOrderUseCase cancelOrderUseCase;

  cancelOrder(CancelServicesOrderEntity cancelOrderEntity) async {
    emit(const TrackServicesOrderStates.loading());
    final order = await cancelOrderUseCase(cancelOrderEntity);

    order.fold(
          (l) {
        emit(
          TrackServicesOrderStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
          (r) async {
        emit(
          TrackServicesOrderStates.cancelSuccess(r),
        );

      },
    );
  }

}
