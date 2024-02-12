import 'package:equatable/equatable.dart';

class ContactUsEntity extends Equatable {
  final int? id;
  final int? userId;
  final int? status;
  final String? message;

  const ContactUsEntity(
      {this.id,
      this.userId,
      this.status,
      this.message});

  @override
  List<Object?> get props => [
        id,
        userId,
        status,
        message,
      ];
}
