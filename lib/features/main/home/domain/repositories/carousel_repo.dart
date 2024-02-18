import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/carousel_entity.dart';


abstract class CarouselRepo {
  Future<Either<Failure, List<CarouselEntity>>> getAllCarousel();

}
