import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';


final di = GetIt.instance;

Future<void> init() async {
  /// Login
  // di.registerFactory(
  //     () => LoginCubit(loginUseCase: di(), verifyResendCodeUseCase: di()));
  // di.registerLazySingleton(() => LoginUseCase(loginRepo: di()));
  // di.registerLazySingleton<LoginRepo>(() => LoginRepoImpl(loginService: di()));
  // di.registerLazySingleton<LoginService>(() => LoginServiceImpl());
  //
  // /// Forgot Password
  // di.registerFactory(() => ForgotPassCubit(forgotPassUseCase: di()));
  // di.registerLazySingleton(() => ForgotPassUseCase(forgotPassRepo: di()));
  // di.registerLazySingleton<ForgotPassRepo>(
  //     () => ForgotPassRepoImpl(forgotPassService: di()));
  // di.registerLazySingleton<ForgotPassService>(() => ForgotPassServiceImpl());
  //
  // /// Reset Password
  // di.registerFactory(
  //     () => ResetPassCubit(resetPassUseCase: di(), resendCodeUseCase: di()));
  // di.registerLazySingleton(() => ResetPassUseCase(resetPassRepo: di()));
  // di.registerLazySingleton<ResetPassRepo>(
  //     () => ResetPassRepoImpl(resetPassService: di(), resendCodeService: di()));
  // di.registerLazySingleton<ResetPassService>(() => ResetPassServiceImpl());
  // di.registerLazySingleton<ResendCodeService>(() => ResendCodeServiceImpl());
  //
  // /// Change Password
  // di.registerFactory(() => ChangePassCubit(changePassUseCase: di()));
  // di.registerLazySingleton(() => ChangePassUseCase(di()));
  // di.registerLazySingleton(() => ResendCodeUseCase(resetPassRepo: di()));
  // di.registerLazySingleton<ChangePassRepo>(() => ChangePassRepoImpl(di()));
  // di.registerLazySingleton<ChangePassService>(() => ChangePassServiceImpl());
  //
  // /// Register
  // di.registerFactory(() =>
  //     RegisterCubit(registerUseCase: di(), checkRegisteredEmailUseCase: di()));
  // di.registerLazySingleton(() => RegisterUseCase(registerRepo: di()));
  // di.registerLazySingleton(
  //     () => CheckRegisteredEmailUseCase(registerRepo: di()));
  // di.registerLazySingleton<RegisterRepo>(() => RegisterRepoImpl(
  //     registerService: di(), checkRegisteredEmailService: di()));
  // di.registerLazySingleton<RegisterService>(() => RegisterServiceImpl());
  // di.registerLazySingleton<CheckRegisteredEmailService>(
  //     () => CheckRegisteredEmailServiceImpl());
  //
  // /// Verify Account
  // di.registerFactory(() =>
  //     VerifyAccountCubit(verifyAccountUseCase: di(), resendCodeUseCase: di()));
  // di.registerLazySingleton(() => VerifyAccountUseCase(di()));
  // di.registerLazySingleton(
  //     () => VerifyResendCodeUseCase(verifyAccountRepo: di()));
  // di.registerLazySingleton<VerifyAccountRepo>(
  //     () => VerifyAccountRepoImpl(di(), di()));
  // di.registerLazySingleton<VerifyAccountService>(
  //     () => VerifyAccountServiceImpl());
  // di.registerLazySingleton<VerifyResendCodeService>(
  //     () => VerifyResendCodeServiceImpl());


  /// external
  final sharedPrefs = await SharedPreferences.getInstance();
  di.registerLazySingleton(() => sharedPrefs);
}
