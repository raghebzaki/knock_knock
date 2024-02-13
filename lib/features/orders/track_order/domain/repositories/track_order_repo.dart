
import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/track_order_entity.dart';

abstract class TrackOrderRepo {
  Future<Either<Failure, TrackOrderEntity>> trackOrder(TrackOrderEntity trackOrderEntity);
}