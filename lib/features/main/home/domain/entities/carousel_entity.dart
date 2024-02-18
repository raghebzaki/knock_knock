import 'package:equatable/equatable.dart';

class CarouselEntity extends Equatable {
  final num? id;
  final String? titleAr;
  final String? titleEn;
  final String? image;

  const CarouselEntity({this.id, this.titleAr, this.titleEn, this.image});

  @override
  List<Object?> get props => [id, titleAr, titleEn, image];
}
