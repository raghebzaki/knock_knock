
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/week_days_entity.dart';

abstract class WeekDaysRepo {
  Future<Either<Failure, List<WeekDaysEntity>>> getWeekDays();
}
