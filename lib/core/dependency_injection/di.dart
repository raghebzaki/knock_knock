import 'package:get_it/get_it.dart';
import 'package:knockknock/features/main/home/presentation/manager/carousel_cubit.dart';
import 'package:knockknock/features/main/search/presentation/manager/search_cubit.dart';
import 'package:knockknock/features/orders/services/order_details/presentation/manager/service_cancel_order_cubit.dart';
import 'package:knockknock/features/payment/services_payment_summary/presentation/manager/services_place_order_cubit.dart';
import 'package:knockknock/features/profile/edit_profile/domain/use_cases/delete_account_use_case.dart';
import 'package:knockknock/features/profile/edit_profile/domain/use_cases/edit_account_use_case.dart';
import 'package:knockknock/features/profile/edit_profile/presentation/manager/edit_profile_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/change_pass/data/data_sources/change_pass_service.dart';
import '../../features/auth/change_pass/data/repositories/change_pass_repo_impl.dart';
import '../../features/auth/change_pass/domain/repositories/change_pass_repo.dart';
import '../../features/auth/change_pass/domain/use_cases/change_pass_usecase.dart';
import '../../features/auth/change_pass/presentation/manager/change_pass_cubit.dart';
import '../../features/auth/forgot_pass/data/data_sources/forgot_pass_service.dart';
import '../../features/auth/forgot_pass/data/repositories/forget_pass_repo_impl.dart';
import '../../features/auth/forgot_pass/domain/repositories/forget_pass_repo.dart';
import '../../features/auth/forgot_pass/domain/use_cases/forget_pass_usecase.dart';
import '../../features/auth/forgot_pass/presentation/manager/forgot_pass_cubit.dart';
import '../../features/auth/login/data/data_sources/login_service.dart';
import '../../features/auth/login/data/repositories/login_repo_impl.dart';
import '../../features/auth/login/domain/repositories/login_repo.dart';
import '../../features/auth/login/domain/use_cases/login_use_case.dart';
import '../../features/auth/login/presentation/manager/login_cubit.dart';
import '../../features/auth/register/data/data_sources/lcheck_registered_email_service.dart';
import '../../features/auth/register/data/data_sources/register_service.dart';
import '../../features/auth/register/data/repositories/register_repo_impl.dart';
import '../../features/auth/register/domain/repositories/register_repo.dart';
import '../../features/auth/register/domain/use_cases/check_registered_email_usecase.dart';
import '../../features/auth/register/domain/use_cases/register_usecase.dart';
import '../../features/auth/register/presentation/manager/register_cubit.dart';
import '../../features/auth/reset_pass/data/data_sources/resend_code_service.dart';
import '../../features/auth/reset_pass/data/data_sources/reset_pass_service.dart';
import '../../features/auth/reset_pass/data/repositories/reset_pass_repo_impl.dart';
import '../../features/auth/reset_pass/domain/repositories/reset_pass_repo.dart';
import '../../features/auth/reset_pass/domain/use_cases/resend_code_usecase.dart';
import '../../features/auth/reset_pass/domain/use_cases/reset_pass_usecase.dart';
import '../../features/auth/reset_pass/presentation/manager/reset_pass_cubit.dart';
import '../../features/auth/verify_account/data/data_sources/resend_code_service.dart';
import '../../features/auth/verify_account/data/data_sources/verify_account_service.dart';
import '../../features/auth/verify_account/data/repositories/verify_account_repo_impl.dart';
import '../../features/auth/verify_account/domain/repositories/verify_account_repo.dart';
import '../../features/auth/verify_account/domain/use_cases/resend_code_usecase.dart';
import '../../features/auth/verify_account/domain/use_cases/verify_account_usecase.dart';
import '../../features/auth/verify_account/presentation/manager/verify_account_cubit.dart';
import '../../features/main/home/data/data_sources/carousel_service.dart';
import '../../features/main/home/data/data_sources/products_category_service.dart';
import '../../features/main/home/data/data_sources/services_service.dart';
import '../../features/main/home/data/repositories/carousel_repo_impl.dart';
import '../../features/main/home/data/repositories/products_category_repo_impl.dart';
import '../../features/main/home/data/repositories/services_repo_impl.dart';
import '../../features/main/home/domain/repositories/carousel_repo.dart';
import '../../features/main/home/domain/repositories/products_category_repo.dart';
import '../../features/main/home/domain/repositories/services_repo.dart';
import '../../features/main/home/domain/use_cases/carousel_use_case.dart';
import '../../features/main/home/domain/use_cases/products_category_use_case.dart';
import '../../features/main/home/domain/use_cases/services_use_case.dart';
import '../../features/main/home/presentation/manager/products_category_cubit.dart';
import '../../features/main/home/presentation/manager/services_cubit.dart';
import '../../features/main/products/data/data_sources/products_service.dart';
import '../../features/main/products/data/repositories/products_repo_impl.dart';
import '../../features/main/products/domain/repositories/products_repo.dart';
import '../../features/main/products/domain/use_cases/products_use_case.dart';
import '../../features/main/products/presentation/manager/products_cubit.dart';
import '../../features/main/search/data/data_sources/products_service.dart';
import '../../features/main/search/data/data_sources/services_service.dart';
import '../../features/main/search/data/repositories/products_repo_impl.dart';
import '../../features/main/search/data/repositories/services_repo_impl.dart';
import '../../features/main/search/domain/repositories/products_repo.dart';
import '../../features/main/search/domain/repositories/services_repo.dart';
import '../../features/main/search/domain/use_cases/products_use_case.dart';
import '../../features/main/search/domain/use_cases/services_use_case.dart';
import '../../features/main/services_details/data/data_sources/week_days_service.dart';
import '../../features/main/services_details/data/repositories/week_days_repo_impl.dart';
import '../../features/main/services_details/domain/repositories/week_days_repo.dart';
import '../../features/main/services_details/domain/usecases/week_days_use_case.dart';
import '../../features/main/services_details/presentation/manager/week_days_cubit.dart';

import '../../features/orders/products/my_products_orders/data/data_sources/my_products_orders_service.dart';
import '../../features/orders/products/my_products_orders/data/repositories/my_products_orders_repo_impl.dart';
import '../../features/orders/products/my_products_orders/domain/repositories/my_products_orders_repo.dart';
import '../../features/orders/products/my_products_orders/domain/use_cases/my_products_orders_usecase.dart';
import '../../features/orders/products/my_products_orders/presentation/manager/my_orders_cubit.dart';

import '../../features/orders/products/order_details/data/data_sources/cancel_order_service.dart';
import '../../features/orders/products/order_details/data/repositories/cancel_order_repo_impl.dart';
import '../../features/orders/products/order_details/domain/repositories/cancel_order_repo.dart';
import '../../features/orders/products/order_details/domain/use_cases/cancel_order_usecase.dart';
import '../../features/orders/products/order_details/presentation/manager/cancel_product_order_cubit.dart';
import '../../features/orders/services/my_services_orders/data/data_sources/my_services_orders_service.dart';
import '../../features/orders/services/my_services_orders/data/repositories/my_services_orders_repo_impl.dart';
import '../../features/orders/services/my_services_orders/domain/repositories/my_services_orders_repo.dart';
import '../../features/orders/services/my_services_orders/domain/use_cases/my_services_orders_usecase.dart';
import '../../features/orders/services/my_services_orders/presentation/manager/my_services_orders_cubit.dart';
import '../../features/orders/services/order_details/data/data_sources/cancel_order_service.dart';
import '../../features/orders/services/order_details/data/repositories/cancel_order_repo_impl.dart';
import '../../features/orders/services/order_details/domain/repositories/cancel_order_repo.dart';
import '../../features/orders/services/order_details/domain/use_cases/cancel_order_usecase.dart';
import '../../features/payment/products_payment_summary/data/data_sources/products_coupon_service.dart';
import '../../features/payment/products_payment_summary/data/data_sources/products_place_order_service.dart';
import '../../features/payment/products_payment_summary/data/repositories/products_coupon_repo_impl.dart';
import '../../features/payment/products_payment_summary/data/repositories/products_place_order_repo_impl.dart';
import '../../features/payment/products_payment_summary/domain/repositories/products_coupon_repo.dart';
import '../../features/payment/products_payment_summary/domain/repositories/products_place_order_repo.dart';
import '../../features/payment/products_payment_summary/domain/use_cases/products_coupon_use_case.dart';
import '../../features/payment/products_payment_summary/domain/use_cases/products_place_order_use_case.dart';
import '../../features/payment/products_payment_summary/presentation/manager/products_coupon_cubit.dart';
import '../../features/payment/products_payment_summary/presentation/manager/products_place_order_cubit.dart';
import '../../features/payment/services_payment_summary/data/data_sources/services_coupon_service.dart';
import '../../features/payment/services_payment_summary/data/data_sources/services_place_order_service.dart';
import '../../features/payment/services_payment_summary/data/repositories/services_coupon_repo_impl.dart';
import '../../features/payment/services_payment_summary/data/repositories/services_place_order_repo_impl.dart';
import '../../features/payment/services_payment_summary/domain/repositories/services_coupon_repo.dart';
import '../../features/payment/services_payment_summary/domain/repositories/services_place_order_repo.dart';
import '../../features/payment/services_payment_summary/domain/use_cases/services_coupon_use_case.dart';
import '../../features/payment/services_payment_summary/domain/use_cases/services_place_order_use_case.dart';
import '../../features/payment/services_payment_summary/presentation/manager/services_coupon_cubit.dart';
import '../../features/profile/contact_us/data/data_sources/contact_us_service.dart';
import '../../features/profile/contact_us/data/repositories/contact_us_repo_impl.dart';
import '../../features/profile/contact_us/domain/repositories/contact_us_repo.dart';
import '../../features/profile/contact_us/domain/use_cases/contact_us_use_case.dart';
import '../../features/profile/contact_us/presentation/manager/contact_us_cubit.dart';
import '../../features/profile/edit_profile/data/data_sources/edit_profile_service.dart';
import '../../features/profile/edit_profile/data/repositories/edit_profile_repo_impl.dart';
import '../../features/profile/edit_profile/domain/repositories/edit_profile_repo.dart';

final di = GetIt.instance;

Future<void> init() async {
  /// Login
  di.registerFactory(
      () => LoginCubit(loginUseCase: di(), verifyResendCodeUseCase: di()));
  di.registerLazySingleton(() => LoginUseCase(loginRepo: di()));
  di.registerLazySingleton<LoginRepo>(() => LoginRepoImpl(loginService: di()));
  di.registerLazySingleton<LoginService>(() => LoginServiceImpl());

  /// Forgot Password
  di.registerFactory(() => ForgotPassCubit(forgotPassUseCase: di()));
  di.registerLazySingleton(() => ForgotPassUseCase(forgotPassRepo: di()));
  di.registerLazySingleton<ForgotPassRepo>(() => ForgotPassRepoImpl(forgotPassService: di()));
  di.registerLazySingleton<ForgotPassService>(() => ForgotPassServiceImpl());

  /// Reset Password
  di.registerFactory(
      () => ResetPassCubit(resetPassUseCase: di(), resendCodeUseCase: di()));
  di.registerLazySingleton(() => ResetPassUseCase(resetPassRepo: di()));
  di.registerLazySingleton<ResetPassRepo>(
      () => ResetPassRepoImpl(resetPassService: di(), resendCodeService: di()));
  di.registerLazySingleton<ResetPassService>(() => ResetPassServiceImpl());
  di.registerLazySingleton<ResendCodeService>(() => ResendCodeServiceImpl());

  /// Change Password
  di.registerFactory(() => ChangePassCubit(changePassUseCase: di()));
  di.registerLazySingleton(() => ChangePassUseCase(di()));
  di.registerLazySingleton(() => ResendCodeUseCase(resetPassRepo: di()));
  di.registerLazySingleton<ChangePassRepo>(() => ChangePassRepoImpl(di()));
  di.registerLazySingleton<ChangePassService>(() => ChangePassServiceImpl());

  /// Register
  di.registerFactory(() =>
      RegisterCubit(registerUseCase: di(), checkRegisteredEmailUseCase: di()));
  di.registerLazySingleton(() => RegisterUseCase(registerRepo: di()));
  di.registerLazySingleton(
      () => CheckRegisteredEmailUseCase(registerRepo: di()));
  di.registerLazySingleton<RegisterRepo>(() => RegisterRepoImpl(
      registerService: di(), checkRegisteredEmailService: di()));
  di.registerLazySingleton<RegisterService>(() => RegisterServiceImpl());
  di.registerLazySingleton<CheckRegisteredEmailService>(
      () => CheckRegisteredEmailServiceImpl());

  /// Verify Account
  di.registerFactory(() =>
      VerifyAccountCubit(verifyAccountUseCase: di(), resendCodeUseCase: di()));
  di.registerLazySingleton(() => VerifyAccountUseCase(di()));
  di.registerLazySingleton(
      () => VerifyResendCodeUseCase(verifyAccountRepo: di()));
  di.registerLazySingleton<VerifyAccountRepo>(
      () => VerifyAccountRepoImpl(di(), di()));
  di.registerLazySingleton<VerifyAccountService>(
      () => VerifyAccountServiceImpl());
  di.registerLazySingleton<VerifyResendCodeService>(
      () => VerifyResendCodeServiceImpl());

  ///Home view
  /// carousel
  di.registerFactory(() => CarouselCubit(carouselUseCase: di()));
  di.registerLazySingleton(() => CarouselUseCase(di()));
  di.registerLazySingleton<CarouselRepo>(() => CarouselRepoImpl(di(),));
  di.registerLazySingleton<CarouselService>(() => CarouselServiceImpl());
  /// Services
  di.registerFactory(() => ServicesCubit( di()));
  di.registerLazySingleton(() => ServicesUseCase(di()));
  di.registerLazySingleton<ServicesRepo>(() => ServicesRepoImpl(di(),));
  di.registerLazySingleton<ServicesService>(() => ServicesServiceImpl());
  /// Products Category
  di.registerFactory(() => ProductsCategoryCubit( di()));
  di.registerLazySingleton(() => ProductsCategoryUseCase(di()));
  di.registerLazySingleton<ProductsCategoryRepo>(() => ProductsCategoryRepoImpl(di(),));
  di.registerLazySingleton<ProductsCategoryService>(() => ProductsCategoryServiceImpl());
 /// Products Category
  di.registerFactory(() => ProductsCubit( di()));
  di.registerLazySingleton(() => ProductsUseCase(di()));
  di.registerLazySingleton<ProductsRepo>(() => ProductsRepoImpl(di(),));
  di.registerLazySingleton<ProductsService>(() => ProductsServiceImpl());

  /// Products Details
  di.registerFactory(() => WeekDaysCubit( daysUseCase: di()));
  di.registerLazySingleton(() => WeekDaysUseCase(weekDaysRepo: di()));
  di.registerLazySingleton<WeekDaysRepo>(() => WeekDaysRepoImpl(weekDayService: di(),));
  di.registerLazySingleton<WeekDayService>(() => WeekDayServiceImpl());

  ///profile
  /// Edit profile
  di.registerFactory(() =>
      EditProfileCubit(editProfileUseCase: di(),deleteAccountUseCase: di()));
  di.registerLazySingleton(() => EditProfileUseCase(di()));
  di.registerLazySingleton(() => DeleteAccountUseCase( di()));
  di.registerLazySingleton<EditProfileRepo>(() => EditProfileRepoImpl(di(),));
  di.registerLazySingleton<EditProfileService>(() => EditProfileServiceImpl());
  /// contact us
  di.registerFactory(() => ContactUsCubit(contactUsUseCase: di()));
  di.registerLazySingleton(() => ContactUsUseCase(di()));
  di.registerLazySingleton<ContactUsRepo>(() => ContactUsRepoImpl(di(),));
  di.registerLazySingleton<ContactUsService>(() => ContactUsServiceImpl());

  /// order
  /// my products orders
  di.registerFactory(() => MyOrdersCubit(myOrdersUseCase: di()));
  di.registerLazySingleton(() => MyOrdersUseCase(myOrdersRepo: di()));
  di.registerLazySingleton<MyProductsOrdersRepo>(() => MyProductsOrdersRepoImpl(myOrdersService: di(),));
  di.registerLazySingleton<MyProductsOrdersService>(() => MyProductsOrdersServiceImpl());

  ///  cancel product order
  di.registerFactory(() => CancelProductOrderCubit(cancelOrderUseCase: di()));
  di.registerLazySingleton(() => CancelProductOrderUseCase(cancelOrderRepo: di()));
  di.registerLazySingleton<CancelProductOrderRepo>(() => CancelProductOrderRepoImpl(cancelOrderService: di(),));
  di.registerLazySingleton<CancelProductOrderService>(() => CancelProductOrderServiceImpl());
  /// my Services orders
  di.registerFactory(() => MyServicesOrdersCubit(myOrdersUseCase: di()));
  di.registerLazySingleton(() => MyServicesOrdersUseCase(myOrdersRepo: di()));
  di.registerLazySingleton<MyServicesOrdersRepo>(() => MyServicesOrdersRepoImpl(myOrdersService: di(),));
  di.registerLazySingleton<MyServicesOrdersService>(() => MyServicesOrdersServiceImpl());
  ///  cancel Service order
  di.registerFactory(() => ServiceCancelOrderCubit(cancelOrderUseCase: di()));
  di.registerLazySingleton(() => CancelServiceOrderUseCase(cancelOrderRepo: di()));
  di.registerLazySingleton<CancelServiceOrderRepo>(() => CancelServiceOrderRepoImpl(cancelOrderService: di(),));
  di.registerLazySingleton<CancelServiceOrderService>(() => CancelServiceOrderServiceImpl());

  /// payment
  /// service payment
  di.registerFactory(() => ServicesPlaceOrderCubit(placeOrderUseCase: di()));
  di.registerLazySingleton(() => ServicesPlaceOrderUseCase(placeOrderRepo: di()));
  di.registerLazySingleton<ServicesPlaceOrderRepo>(() => ServicesPlaceOrderRepoImpl(placeOrderService: di(),));
  di.registerLazySingleton<ServicesPlaceOrderService>(() => ServicesPlaceOrderServiceImpl());
  /// apply coupon
  di.registerFactory(() => ServicesCouponCubit(couponUseCase: di()));
  di.registerLazySingleton(() => ServicesCouponUseCase( couponRepo: di()));
  di.registerLazySingleton<ServicesCouponRepo>(() => ServicesCouponRepoImpl(couponService: di(),));
  di.registerLazySingleton<ServicesCouponService>(() => ServicesCouponServiceImpl());
  /// products payment
  di.registerFactory(() => ProductsPlaceOrderCubit(placeOrderUseCase: di()));
  di.registerLazySingleton(() => ProductsPlaceOrderUseCase(placeOrderRepo: di()));
  di.registerLazySingleton<ProductsPlaceOrderRepo>(() => ProductsPlaceOrderRepoImpl(placeOrderService: di(),));
  di.registerLazySingleton<ProductsPlaceOrderService>(() => ProductsPlaceOrderServiceImpl());
  /// apply coupon
  di.registerFactory(() => ProductsCouponCubit(couponUseCase: di()));
  di.registerLazySingleton(() => ProductsCouponUseCase( couponRepo: di()));
  di.registerLazySingleton<ProductsCouponRepo>(() => ProductsCouponRepoImpl(couponService: di(),));
  di.registerLazySingleton<ProductsCouponService>(() => ProductsCouponServiceImpl());
  /// search
  di.registerFactory(() => SearchCubit(servicesUseCase: di(),productsUseCase: di()));
  di.registerLazySingleton(() => ProductsSearchUseCase(  di()));
  di.registerLazySingleton<ProductsSearchRepo>(() => ProductsSearchRepoImpl( di(),));
  di.registerLazySingleton<ProductsSearchService>(() => ProductsSearchServiceImpl());
  di.registerLazySingleton(() => ServicesSearchUseCase( di()));
  di.registerLazySingleton<ServicesSearchRepo>(() => ServicesSearchRepoImpl( di(),));
  di.registerLazySingleton<ServicesSearchService>(() => ServicesSearchServiceImpl());
  /// external
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPrefs);
}
