import '../../../generated/l10n.dart';

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 201; // success with no data (no content)
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorized = 401; // failure, user is not authorised
  static const int forbidden = 403; //  failure, API rejected request
  static const int notFound = 404; // failure, not found
  static const int internalServerError = 500; // failure, crash in server side

  // local status code
  static const int connectionTimeout = -1;
  static const int cancel = -2;
  static const int receiveTimeout = -3;
  static const int sendTimeout = -4;
  static const int cacheError = -5;
  static const int noInternetConnection = -6;
  static const int kDefault = -7;
}

class ResponseMessage {
  static String success = S.current.success; // success with data
  static String noContent = S.current.no_content; // success with no data (no content)
  static String badRequest = S.current.bad_request_error; // failure, API rejected request
  static String unauthorized = S.current.unauthorized_error; // failure, user is not authorised
  static String forbidden = S.current.forbidden_error; //  failure, API rejected request
  static String internalServerError = S.current.internal_server_error; // failure, crash in server side
  static String notFound = S.current.not_found_error; // failure, crash in server side

  // local status code
  static String connectionTimeout = S.current.timeout_error;
  static String cancel = S.current.default_error;
  static String receiveTimeout = S.current.timeout_error;
  static String sendTimeout = S.current.timeout_error;
  static String cacheError = S.current.cache_error;
  static String noInternetConnection = S.current.no_internet_error;
  static String kDefault = S.current.default_error;
}