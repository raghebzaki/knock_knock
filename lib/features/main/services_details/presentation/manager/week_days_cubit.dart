import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/week_days_entity.dart';
import '../../domain/usecases/week_days_use_case.dart';

part 'week_days_state.dart';

part 'week_days_cubit.freezed.dart';

class WeekDaysCubit extends Cubit<WeekDaysStates> {
  WeekDaysCubit({required this.daysUseCase})
      : super(const WeekDaysStates.initial());

  static WeekDaysCubit get(BuildContext context) => BlocProvider.of(context);

  final WeekDaysUseCase daysUseCase;

  getAllDays() async {
    emit(const WeekDaysStates.loading());

    final getDays = await daysUseCase();

    getDays.fold(
      (l) => {
        emit(
          WeekDaysStates.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
      (r) => {
        emit(
          WeekDaysStates.success(r),
        ),
      },
    );
  }
}
