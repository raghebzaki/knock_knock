import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../../../../core/shared/models/services_model.dart';

abstract class ServicesSearchService {
  Future<List<ServicesModel>> getAllServices(String? search,int? nextPage);
}

class ServicesSearchServiceImpl implements ServicesSearchService {

  @override
  Future<List<ServicesModel>> getAllServices(String? search,int? nextPage) async {

    Dio dio = await DioFactory.getDio();
    List<ServicesModel> servicesList = [];

    final contracts = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.servicesSearchUri,

      queryParameters: {
        "page": nextPage,
      },
      data: {
        "search": search,
      },
    );

    if (contracts.statusCode == 200) {
      Iterable l = contracts.data['data']['data'];
      servicesList = List<ServicesModel>.from(
        l.map(
              (model) => ServicesModel.fromJson(model),
        ),
      );
    }

    return servicesList;
  }

}
