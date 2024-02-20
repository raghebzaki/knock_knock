import 'package:dio/dio.dart';

import '../../../../../core/service/dio_factory.dart';
import '../../../../../core/utils/app_constants.dart';
import '../models/week_days_model.dart';

abstract class WeekDayService {
  Future<List<WeekDaysModel>> getDays();
}

class WeekDayServiceImpl implements WeekDayService {
  @override
  Future<List<WeekDaysModel>> getDays() async {
    Dio dio = await DioFactory.getDio();
    List<WeekDaysModel> weekDaysList = [];

    final days = await dio.get(
      AppConstants.apiBaseUrl + AppConstants.getWeekDaysUri,
    );

    if (days.statusCode == 200) {
      Iterable l = days.data['data'];
      weekDaysList = List<WeekDaysModel>.from(
        l.map(
              (model) => WeekDaysModel.fromJson(model),
        ),
      );
    }

    return weekDaysList;
  }

}