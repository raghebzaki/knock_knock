import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:knockknock/core/resources/api/failure_class.dart';


import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../domain/entities/week_days_entity.dart';
import '../../domain/repositories/week_days_repo.dart';
import '../data_sources/week_days_service.dart';

class WeekDaysRepoImpl implements WeekDaysRepo {
  final WeekDayService weekDayService;

  WeekDaysRepoImpl({required this.weekDayService});

  @override
  Future<Either<Failure, List<WeekDaysEntity>>> getWeekDays() async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getDays = await weekDayService.getDays();
        return right(getDays);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
