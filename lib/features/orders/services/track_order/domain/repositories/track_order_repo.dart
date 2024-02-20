
import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/track_order_entity.dart';

abstract class TrackServicesOrderRepo {
  Future<Either<Failure, TrackServicesOrderEntity>> trackOrder(TrackServicesOrderEntity trackOrderEntity);
}