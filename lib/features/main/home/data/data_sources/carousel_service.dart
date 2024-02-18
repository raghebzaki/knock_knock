import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../models/carousel_model.dart';

abstract class CarouselService {
  Future<List<CarouselModel>> getAllCarousel();
}

class CarouselServiceImpl implements CarouselService {

  @override
  Future<List<CarouselModel>> getAllCarousel() async {

    Dio dio = await DioFactory.getDio();
    List<CarouselModel> productsList = [];

    final contracts = await dio.get(
      AppConstants.apiBaseUrl + AppConstants.carouselUri,
    );

    if (contracts.statusCode == 200) {
      Iterable l = contracts.data['data'];
      productsList = List<CarouselModel>.from(
        l.map(
              (model) => CarouselModel.fromJson(model),
        ),
      );
    }

    return productsList;
  }


}
