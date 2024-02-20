import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/track_order_entity.dart';
import '../repositories/track_order_repo.dart';

class TrackServicesOrderUseCase {
  final TrackServicesOrderRepo trackOrderRepo;

  TrackServicesOrderUseCase({required this.trackOrderRepo});

  Future<Either<Failure, TrackServicesOrderEntity>> call(
      TrackServicesOrderEntity trackOrderEntity) async {
    return await trackOrderRepo.trackOrder(trackOrderEntity);
  }
}
