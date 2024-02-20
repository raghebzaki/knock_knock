import '../../domain/entities/week_days_entity.dart';

class WeekDaysModel extends WeekDaysEntity {
  const WeekDaysModel({
    super.id,
    super.nameEn,
    super.nameAr,
  });

  factory WeekDaysModel.fromJson(Map<String, dynamic> json) {
    return WeekDaysModel(
      id: json['id'],
      nameEn: json['name_en'],
      nameAr: json['name_ar'],
    );
  }
}
