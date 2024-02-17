class AppConstants {
  static RegExp emailRegExp = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
  static RegExp passRegExp =
      RegExp(r"(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\\$&*~]).{8,}");
  static RegExp phoneRegExp = RegExp(r"(?:[+0][1-9])?[0-9]{9,12}");


  static const appName = "Knock knock";

  //? Consts for language manager
  static const arabic = "ar";
  static const english = "en";
  static const prefsLangKey = "prefsLangKey";

  // * Main UI constants
  static const mainFontFamily = "Readex Pro";
  static const subFontFamily = "Abhaya Libre";
  static const unknownStringValue = "UNKNOWN STRING VALUE";
  static const unknownNumValue = 2077;
  static const deliveryFee = 20;

  //! API headers
  static const String applicationJson = "application/json";
  static const apiToken = "Send Token Here";
  static const apiTimeOut = 60000;
  static String? fcmToken = "";

  // * API URIs
  static const apiBaseUrl = "https://dashboard.knock-knock.ae/api/";
  static const imageUrl = "https://dashboard.knock-knock.ae/";
  static const loginUri = "auth/login";
  static const forgotPassUri = "auth/forget-password";
  static const resetPassUri = "auth/reset-password";
  static const changePassUri = "auth/change-password";
  static const registerUri = "auth/register";
  static const verifyAccountUri = "auth/account_verification";
  static const checkEmailRegisterUri = "auth/check_email_before_register";
  static const resendCodeUri = "auth/resend-code";

  ///main
  static const productsUri = "";
  static const servicesUri = "";
  static const favoriteProductsUri = "";
  static const addFavoriteProductsUri = "";
  static const checkIfFavoriteProductsUri = "";
  static const categoryDetailsUri = "";
  static const placeOrderUri = "";
  static const addPromoCodeUri = "";
  static const carouselUri = "";
  static const categoryUri = "";
  static const subCategoryUri = "";
  static const getMyOrdersUri = "";
  static const contactUsUri = "";
  static const deleteProfileUri = "";
  static const editUserProfileUri = "";
  static const deleteUserAccountUri = "";

}
