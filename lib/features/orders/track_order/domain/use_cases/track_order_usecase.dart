import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/track_order_entity.dart';
import '../repositories/track_order_repo.dart';

class TrackOrderUseCase {
  final TrackOrderRepo trackOrderRepo;

  TrackOrderUseCase({required this.trackOrderRepo});

  Future<Either<Failure, TrackOrderEntity>> call(
      TrackOrderEntity trackOrderEntity) async {
    return await trackOrderRepo.trackOrder(trackOrderEntity);
  }
}
