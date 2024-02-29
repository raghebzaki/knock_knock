import 'package:dio/dio.dart';
import 'package:knockknock/core/shared/models/product_model.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';

abstract class ProductsSearchService {
  Future<List<ProductModel>> getAllProducts(int? nextPage,String? search,);
}

class ProductsSearchServiceImpl implements ProductsSearchService {

  @override
  Future<List<ProductModel>> getAllProducts(int? nextPage,String? search,) async {

    Dio dio = await DioFactory.getDio();
    List<ProductModel> productsList = [];

    final contracts = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.productsSearchUri,
      data: {
        "search":search,
      },
      queryParameters: {
        "page": nextPage,
      },
    );

    if (contracts.statusCode == 200) {
      Iterable l = contracts.data['data']['data'];
      productsList = List<ProductModel>.from(
        l.map(
              (model) => ProductModel.fromJson(model),
        ),
      );
    }

    return productsList;
  }

}
