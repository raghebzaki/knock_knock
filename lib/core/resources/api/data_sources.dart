import 'package:knockknock/core/resources/api/responses.dart';

import 'failure_class.dart';

/// This is an enumeration that defines various data sources, each associated with a specific type of failure.
/// It to be used for mapping error types to failure responses.

enum DataSource {
  success,
  noContent,
  multipleChoices,
  movedPermanently,
  badRequest,
  forbidden,
  unauthorized,
  paymentRequired,
  notFound,
  methodNotAllowed,
  badGateway,
  serviceUnavailable,
  internalServerError,
  connectionTimeout,
  cancel,
  receiveTimeout,
  sendTimeout,
  cacheError,
  noInternetConnection,
  kDefault
}

extension DataSourceExtension on DataSource {
  Failure getFailure() {
    // var mContext = navigatorKey!.currentState!.context;
    switch (this) {
      case DataSource.success:
        return Failure(
          ResponseCode.success,
          ResponseMessage.success,
        );
      case DataSource.noContent:
        return Failure(
          ResponseCode.noContent,
          ResponseMessage.noContent,
        );
      case DataSource.multipleChoices:
        return Failure(
          ResponseCode.multipleChoices,
          ResponseMessage.multipleChoices,
        );
      case DataSource.movedPermanently:
        return Failure(
          ResponseCode.movedPermanently,
          ResponseMessage.movedPermanently,
        );
      case DataSource.badRequest:
        return Failure(
          ResponseCode.badRequest,
          ResponseMessage.badRequest,
        );
      case DataSource.forbidden:
        return Failure(
          ResponseCode.forbidden,
          ResponseMessage.forbidden,
        );
      case DataSource.unauthorized:
        return Failure(
          ResponseCode.unauthorized,
          ResponseMessage.unauthorized,
        );
      case DataSource.paymentRequired:
        return Failure(
          ResponseCode.paymentRequired,
          ResponseMessage.paymentRequired,
        );
      case DataSource.notFound:
        return Failure(
          ResponseCode.notFound,
          ResponseMessage.notFound,
        );
      case DataSource.methodNotAllowed:
        return Failure(
          ResponseCode.methodNotAllowed,
          ResponseMessage.methodNotAllowed,
        );
      case DataSource.badGateway:
        return Failure(
          ResponseCode.badGateway,
          ResponseMessage.badGateway,
        );
      case DataSource.serviceUnavailable:
        return Failure(
          ResponseCode.serviceUnavailable,
          ResponseMessage.serviceUnavailable,
        );
      case DataSource.internalServerError:
        return Failure(
          ResponseCode.internalServerError,
          ResponseMessage.internalServerError,
        );
      case DataSource.connectionTimeout:
        return Failure(
          ResponseCode.connectionTimeout,
          ResponseMessage.connectionTimeout,
        );
      case DataSource.cancel:
        return Failure(
          ResponseCode.cancel,
          ResponseMessage.cancel,
        );
      case DataSource.receiveTimeout:
        return Failure(
          ResponseCode.receiveTimeout,
          ResponseMessage.receiveTimeout,
        );
      case DataSource.sendTimeout:
        return Failure(
          ResponseCode.sendTimeout,
          ResponseMessage.sendTimeout,
        );
      case DataSource.cacheError:
        return Failure(
          ResponseCode.cacheError,
          ResponseMessage.cacheError,
        );
      case DataSource.noInternetConnection:
        return Failure(
          ResponseCode.noInternetConnection,
          ResponseMessage.noInternetConnection,
        );
      case DataSource.kDefault:
        return Failure(
          ResponseCode.kDefault,
          ResponseMessage.kDefault,
        );
    }
  }
}
