import '../../../generated/l10n.dart';

class ResponseCode {
  static const int success = 200; // success with data
  static const int noContent = 204; // success with no data (no content)
  static const int multipleChoices = 300; // displaying multiple choices for user
  static const int movedPermanently = 301; // moved to a different URL
  static const int badRequest = 400; // failure, API rejected request
  static const int unauthorized = 401; // failure, user is not authorised
  static const int paymentRequired = 402; // this code might be used as part of some form of digital cash or micro-payment scheme
  static const int forbidden = 403; //  failure, API rejected request
  static const int notFound = 404; // failure, not found
  static const int methodNotAllowed = 405; // request was made using unsupported method
  static const int internalServerError = 500; // failure, crash in server side
  static const int badGateway = 502; // server received an invalid response
  static const int serviceUnavailable = 503; // server down or in maintenance

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
  static String multipleChoices = S.current.multiple_choices; // displaying multiple choices for user
  static String movedPermanently = S.current.moved_permanently; // moved to a different URL
  static String badRequest = S.current.bad_request_error; // failure, API rejected request
  static String unauthorized = S.current.unauthorized_error; // failure, user is not authorised
  static String paymentRequired = S.current.payment_required; // this code might be used as part of some form of digital cash or micro-payment scheme
  static String forbidden = S.current.forbidden_error; //  failure, API rejected request
  static String internalServerError = S.current.internal_server_error; // failure, crash in server side
  static String notFound = S.current.not_found_error; // failure, crash in server side
  static String methodNotAllowed = S.current.method_not_allowed_error;
  static String badGateway = S.current.bad_gateway; // server received an invalid response
  static String serviceUnavailable = S.current.service_unavailable; // server down or in maintenance

  // local status code
  static String connectionTimeout = S.current.timeout_error;
  static String cancel = S.current.default_error;
  static String receiveTimeout = S.current.timeout_error;
  static String sendTimeout = S.current.timeout_error;
  static String cacheError = S.current.cache_error;
  static String noInternetConnection = S.current.no_internet_error;
  static String kDefault = S.current.default_error;
}
