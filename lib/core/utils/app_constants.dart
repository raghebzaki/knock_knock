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
  static num deliveryFee = 0;
  static num shippingFee = 0;
  static  int addressIndex = 0;

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
  static const productsUri = "v1/products/get-products-by-category";
  static const servicesUri = "v1/services/get-all";
  static const carouselUri = "v1/sliders";
  static const productsCategoryUri = "v1/categories/get-product-categories";
  static const servicesPlaceOrderUri = "v1/service_orders/save";
  static const getServicesMyOrdersUri = "v1/service_orders/my-orders";
  static const cancelServicesOrdersUri = "v1/service_orders/cancel-orders";
  static const servicesCouponUri = "v1/service_orders/apply-coupon";
  static const productsPlaceOrderUri = "v1/product_orders/save";
  static const getProductsMyOrdersUri = "v1/product_orders/my-orders";
  static const cancelProductsOrdersUri = "v1/product_orders/cancel-orders";
  static const productsCouponUri = "v1/product_orders/apply-coupon";
  static const giftPlaceOrderUri = "";

  static const contactUsUri = "v1/contacts/send";
  static const deleteProfileUri = "auth/delete_my_account";
  static const editUserProfileUri = "v1/profiles/update";
  static const deleteUserAccountUri = "";
  static const getWeekDaysUri = "v1/days/get-all";
  static const getDeliveryUri = "v1/settings/get-all";

}
