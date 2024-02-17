import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/carousel_entity.dart';
import '../repositories/carousel_repo.dart';


class CarouselUseCase {
  final CarouselRepo carouselRepo;

  CarouselUseCase(this.carouselRepo);

  Future<Either<Failure, List<CarouselEntity>>> call(int nextPage) async {
    return await carouselRepo.getAllCarousel(nextPage);
  }
}
