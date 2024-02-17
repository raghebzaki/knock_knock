import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/carousel_entity.dart';
import '../../domain/repositories/carousel_repo.dart';
import '../data_sources/carousel_service.dart';


class CarouselRepoImpl implements CarouselRepo {
  final CarouselService carouselService;

  CarouselRepoImpl(this.carouselService);


  @override
  Future<Either<Failure, List<CarouselEntity>>> getAllCarousel(int nextPage) async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getCarousel = await carouselService.getAllCarousel(nextPage);
        return right(getCarousel);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}