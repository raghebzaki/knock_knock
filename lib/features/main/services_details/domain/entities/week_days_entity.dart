import 'package:equatable/equatable.dart';

class WeekDaysEntity extends Equatable {
  final num? id;
  final String? nameEn;
  final String? nameAr;

  const WeekDaysEntity({
    this.id,
    this.nameEn,
    this.nameAr,
  });

  @override
  List<Object?> get props => [
        id,
        nameEn,
        nameAr,
      ];
}
