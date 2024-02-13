import 'package:equatable/equatable.dart';

class MapsModel extends Equatable {
  final int? id;
  final int? userId;
  final String? markerId;
  final String? longitude;
  final String? latitude;
  final String? image;
  final String? createdAt;
  final String? updatedAt;

  const MapsModel({
    this.id,
    this.userId,
    this.markerId,
    this.longitude,
    this.latitude,
    this.image,
    this.createdAt,
    this.updatedAt,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        markerId,
        longitude,
        latitude,
        image,
        createdAt,
        updatedAt,
      ];

  factory MapsModel.fromMap(Map<String, dynamic> map) {
    return MapsModel(
      id: map['id'] as int,
      userId: map['userId'] as int,
      longitude: map['longitude'] as String,
      latitude: map['latitude'] as String,
      image: map['image'] as String,
    );
  }
}
