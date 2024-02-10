import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final num code; // 200, 201, 400, 303..500 and so on
  final String message; // error , success

  const Failure(
    this.code,
    this.message,
  );

  @override
  List<Object> get props => [
        code,
        message,
      ];
}
