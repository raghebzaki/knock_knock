import 'package:equatable/equatable.dart';

class ProductsCategoryEntity extends Equatable {
  final num? id;
  final String? name;
  final String? image;

  const ProductsCategoryEntity({this.id, this.name, this.image});

  @override
  List<Object?> get props => [id, name, image];
}
