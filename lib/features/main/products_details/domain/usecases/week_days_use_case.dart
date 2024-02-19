import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/week_days_entity.dart';
import '../repositories/week_days_repo.dart';

class WeekDaysUseCase {
  final WeekDaysRepo weekDaysRepo;

  WeekDaysUseCase({required this.weekDaysRepo});

  Future<Either<Failure, List<WeekDaysEntity>>> call() async {
    return await weekDaysRepo.getWeekDays();
  }
}
