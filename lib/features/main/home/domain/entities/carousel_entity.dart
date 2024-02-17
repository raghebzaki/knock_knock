import 'package:equatable/equatable.dart';

class CarouselEntity extends Equatable {
  final num? id;
  final String? title;
  final String? description;
  final String? image;

  const CarouselEntity({this.id, this.title, this.description, this.image});

  @override
  List<Object?> get props => [id, title, description, image];
}
