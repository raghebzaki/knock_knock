import 'package:get_it/get_it.dart';
import 'package:knockknock/features/main/home/presentation/manager/carousel_cubit.dart';
import 'package:knockknock/features/orders/track_order/domain/use_cases/cancel_order_usecase.dart';
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
import '../../features/orders/my_orders/data/data_sources/my_orders_service.dart';
import '../../features/orders/my_orders/data/repositories/my_orders_repo_impl.dart';
import '../../features/orders/my_orders/domain/repositories/my_orders_repo.dart';
import '../../features/orders/my_orders/domain/use_cases/my_orders_usecase.dart';
import '../../features/orders/my_orders/presentation/manager/my_orders_cubit.dart';
import '../../features/orders/track_order/data/data_sources/cancel_order_service.dart';
import '../../features/orders/track_order/data/data_sources/track_order_service.dart';
import '../../features/orders/track_order/data/repositories/cancel_order_repo_impl.dart';
import '../../features/orders/track_order/data/repositories/track_order_repo_impl.dart';
import '../../features/orders/track_order/domain/repositories/cancel_order_repo.dart';
import '../../features/orders/track_order/domain/repositories/track_order_repo.dart';
import '../../features/orders/track_order/domain/use_cases/track_order_usecase.dart';
import '../../features/orders/track_order/presentation/manager/track_order_cubit.dart';
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
  di.registerLazySingleton<ForgotPassRepo>(
      () => ForgotPassRepoImpl(forgotPassService: di()));
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
  /// my orders
  di.registerFactory(() => MyOrdersCubit(myOrdersUseCase: di()));
  di.registerLazySingleton(() => MyOrdersUseCase(myOrdersRepo: di()));
  di.registerLazySingleton<MyOrdersRepo>(() => MyOrdersRepoImpl(myOrdersService: di(),));
  di.registerLazySingleton<MyOrdersService>(() => MyOrdersServiceImpl());

  /// track order and cancel order
  di.registerFactory(() => TrackOrderCubit(trackOrderUseCase: di(),cancelOrderUseCase: di()));
  di.registerLazySingleton(() => TrackOrderUseCase(trackOrderRepo: di()));
  di.registerLazySingleton(() => CancelOrderUseCase(cancelOrderRepo: di()));
  di.registerLazySingleton<TrackOrderRepo>(() => TrackOrderRepoImpl(trackOrderService: di(),));
  di.registerLazySingleton<TrackOrderService>(() => TrackOrderServiceImpl());
  di.registerLazySingleton<CancelOrderRepo>(() => CancelOrderRepoImpl(cancelOrderService: di(),));
  di.registerLazySingleton<CancelOrderService>(() => CancelOrderServiceImpl());

  /// external
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPrefs);
}
