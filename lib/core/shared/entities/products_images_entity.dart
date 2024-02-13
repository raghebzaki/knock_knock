import 'package:equatable/equatable.dart';

class ProductsImagesEntity extends Equatable {
  final num? id;
  final String? image;

  const ProductsImagesEntity({this.id, this.image});

  @override
  List<Object?> get props => [id, image];
}