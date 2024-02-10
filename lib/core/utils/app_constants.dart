class AppConstants {
  static RegExp emailRegExp = RegExp(
      r"[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?");
  static RegExp passRegExp =
      RegExp(r"(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\\$&*~]).{8,}");
  static RegExp phoneRegExp = RegExp(r"(?:[+0][1-9])?[0-9]{9,12}");

  //? Consts for language manager
  static const arabic = "ar";
  static const english = "en";
  static const prefsLangKey = "prefsLangKey";

  // * Main UI constants
  static const mainFontFamily = "Readex Pro";
  static const subFontFamily = "Abhaya Libre";
  static const unknownStringValue = "UNKNOWN STRING VALUE";
  static const unknownNumValue = 2077;
  static const deliveryFee = 40;

  //! API headers
  static const String applicationJson = "application/json";
  static const apiToken = "Send Token Here";
  static const apiTimeOut = 60000;
  static String? fcmToken = "";

  // * API URIs
  static const apiBaseUrl = "https://beautyproducts.website/api/";
  static const imageUrl = "https://beautyproducts.website/";
  static const fullImgUrl = "https://beautyproducts.website/uploads/users/";
  static const loginUri = "auth/login";
  static const forgotPassUri = "auth/forget-password";
  static const resetPassUri = "auth/reset-password";
  static const changePassUri = "auth/change-password";
  static const registerUri = "auth/register";
  static const verifyAccountUri = "auth/account_verification";
  static const checkEmailRegisterUri = "auth/check_email_before_register";
  static const resendCodeUri = "auth/resend-code";
  static const mostPopularProductsUri = "v1/products/popular";
  static const newProductsUri = "v1/products";
  static const favoriteProductsUri = "v1/products/get-my-favourite";
  static const addFavoriteProductsUri = "v1/products/add-to-favourite";
  static const checkIfFavoriteProductsUri = "v1/products/check-if-favourite";
  static const categoryDetailsUri = "v1/products/sub-category-products";
  static const placeOrderUri = "v1/order/store";
  static const addPromoCodeUri = "v1/validate-coupon";
  static const carouselUri = "v1/ads";
  static const categoryUri = "v1/categories";
  static const subCategoryUri = "v1/sub-categories";
  static const getMyOrdersUri = "v1/orders";
  static const contactUsUri = "v1/send-message";
  static const deleteProfileUri = "auth/delete_my_account";
  static const editUserProfileUri = "auth/update-profile";
  static const deleteUserAccountUri = "";

  /// designer
  static const designerCarouselUri = "v1/ads";
  static const designsUri = "";
  static const designerDeleteProductUri = "v1/designer/delete-product";
  static const designerAddProductUri = "v1/designer/create-product";
  static const designerGetPointsUri = "";
  static const designerBalanceUri = "";
  static const designerExchangeUri = "";
  static const getColorsUri = "v1/colors";
  static const getSizesUri = "v1/sizes";
  static const updateProductUri = "v1/designer/update-product";
  static const myProductsUri = "v1/designer/my-products";
}
