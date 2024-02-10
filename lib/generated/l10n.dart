// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `bad request. try again later`
  String get bad_request_error {
    return Intl.message(
      'bad request. try again later',
      name: 'bad_request_error',
      desc: '',
      args: [],
    );
  }

  /// `Buyer`
  String get buyer {
    return Intl.message(
      'Buyer',
      name: 'buyer',
      desc: '',
      args: [],
    );
  }

  /// `cache error, try again later`
  String get cache_error {
    return Intl.message(
      'cache error, try again later',
      name: 'cache_error',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get change_pass {
    return Intl.message(
      'Change Password',
      name: 'change_pass',
      desc: '',
      args: [],
    );
  }

  /// `Change your password`
  String get change_your_pass {
    return Intl.message(
      'Change your password',
      name: 'change_your_pass',
      desc: '',
      args: [],
    );
  }

  /// `Please check your email to secure your account`
  String get check_your_mail {
    return Intl.message(
      'Please check your email to secure your account',
      name: 'check_your_mail',
      desc: '',
      args: [],
    );
  }

  /// `conflict found, try again later`
  String get conflict_error {
    return Intl.message(
      'conflict found, try again later',
      name: 'conflict_error',
      desc: '',
      args: [],
    );
  }

  /// `Customer Support`
  String get cs {
    return Intl.message(
      'Customer Support',
      name: 'cs',
      desc: '',
      args: [],
    );
  }

  /// `some thing went wrong, try again later`
  String get default_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'default_error',
      desc: '',
      args: [],
    );
  }

  /// `success with not content`
  String get no_content {
    return Intl.message(
      'success with not content',
      name: 'no_content',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get no_internet_error {
    return Intl.message(
      'Please check your internet connection',
      name: 'no_internet_error',
      desc: '',
      args: [],
    );
  }

  /// `url not found, try again later`
  String get not_found_error {
    return Intl.message(
      'url not found, try again later',
      name: 'not_found_error',
      desc: '',
      args: [],
    );
  }

  /// `forbidden request. try again later`
  String get forbidden_error {
    return Intl.message(
      'forbidden request. try again later',
      name: 'forbidden_error',
      desc: '',
      args: [],
    );
  }

  /// `Have a problem?`
  String get have_problem {
    return Intl.message(
      'Have a problem?',
      name: 'have_problem',
      desc: '',
      args: [],
    );
  }

  /// `some thing went wrong, try again later`
  String get internal_server_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'internal_server_error',
      desc: '',
      args: [],
    );
  }

  /// `time out, try again late`
  String get timeout_error {
    return Intl.message(
      'time out, try again late',
      name: 'timeout_error',
      desc: '',
      args: [],
    );
  }

  /// `user unauthorized, try again later`
  String get unauthorized_error {
    return Intl.message(
      'user unauthorized, try again later',
      name: 'unauthorized_error',
      desc: '',
      args: [],
    );
  }

  /// `some thing went wrong, try again later`
  String get unknown_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'unknown_error',
      desc: '',
      args: [],
    );
  }

  /// `unprocessable data, check it and try again`
  String get unprocessable_content_error {
    return Intl.message(
      'unprocessable data, check it and try again',
      name: 'unprocessable_content_error',
      desc: '',
      args: [],
    );
  }

  /// `error_occurred`
  String get error_occurred {
    return Intl.message(
      'error_occurred',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Error Code`
  String get err_code {
    return Intl.message(
      'Error Code',
      name: 'err_code',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful`
  String get login_successful {
    return Intl.message(
      'Login Successful',
      name: 'login_successful',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email`
  String get plz_enter_email {
    return Intl.message(
      'Please enter your email',
      name: 'plz_enter_email',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get enter_valid_email {
    return Intl.message(
      'Please enter a valid email',
      name: 'enter_valid_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get pass {
    return Intl.message(
      'Password',
      name: 'pass',
      desc: '',
      args: [],
    );
  }

  /// `Password Confirmation`
  String get pass_confirm {
    return Intl.message(
      'Password Confirmation',
      name: 'pass_confirm',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Pass`
  String get forgot_pass {
    return Intl.message(
      'Forgot Pass',
      name: 'forgot_pass',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get do_not_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'do_not_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get register_now {
    return Intl.message(
      'Register Now',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `first name`
  String get firstName {
    return Intl.message(
      'first name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `first name required`
  String get firstNameRequired {
    return Intl.message(
      'first name required',
      name: 'firstNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `last name`
  String get lastName {
    return Intl.message(
      'last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `first name required`
  String get lastNameRequired {
    return Intl.message(
      'first name required',
      name: 'lastNameRequired',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_no {
    return Intl.message(
      'Phone Number',
      name: 'phone_no',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `phone number required`
  String get phoneNumberRequired {
    return Intl.message(
      'phone number required',
      name: 'phoneNumberRequired',
      desc: '',
      args: [],
    );
  }

  /// `already have an account?`
  String get alreadyHaveAnAccount {
    return Intl.message(
      'already have an account?',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Password must be entered`
  String get password_required {
    return Intl.message(
      'Password must be entered',
      name: 'password_required',
      desc: '',
      args: [],
    );
  }

  /// `Password must be 8 chars at least`
  String get pass_short {
    return Intl.message(
      'Password must be 8 chars at least',
      name: 'pass_short',
      desc: '',
      args: [],
    );
  }

  /// `Registered Successfully`
  String get register_success {
    return Intl.message(
      'Registered Successfully',
      name: 'register_success',
      desc: '',
      args: [],
    );
  }

  /// `Password confirmation can't be empty`
  String get pass_confrirm_required {
    return Intl.message(
      'Password confirmation can\'t be empty',
      name: 'pass_confrirm_required',
      desc: '',
      args: [],
    );
  }

  /// `Passwords doesn't match`
  String get pass_dont_match {
    return Intl.message(
      'Passwords doesn\'t match',
      name: 'pass_dont_match',
      desc: '',
      args: [],
    );
  }

  /// `Verify Account`
  String get verifyAccount {
    return Intl.message(
      'Verify Account',
      name: 'verifyAccount',
      desc: '',
      args: [],
    );
  }

  /// `verify`
  String get verify {
    return Intl.message(
      'verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `send again`
  String get sendAgain {
    return Intl.message(
      'send again',
      name: 'sendAgain',
      desc: '',
      args: [],
    );
  }

  /// `send code`
  String get send_code {
    return Intl.message(
      'send code',
      name: 'send_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verify_code {
    return Intl.message(
      'Verify Code',
      name: 'verify_code',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code sent to your phone`
  String get verify_code_sent {
    return Intl.message(
      'Verification Code sent to your phone',
      name: 'verify_code_sent',
      desc: '',
      args: [],
    );
  }

  /// `phone used`
  String get email_used {
    return Intl.message(
      'phone used',
      name: 'email_used',
      desc: '',
      args: [],
    );
  }

  /// `otp is correct`
  String get otpIsCorrect {
    return Intl.message(
      'otp is correct',
      name: 'otpIsCorrect',
      desc: '',
      args: [],
    );
  }

  /// `failed to checkOtp`
  String get failedToCheckOtp {
    return Intl.message(
      'failed to checkOtp',
      name: 'failedToCheckOtp',
      desc: '',
      args: [],
    );
  }

  /// `OTP sent to`
  String get otp_sent {
    return Intl.message(
      'OTP sent to',
      name: 'otp_sent',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password`
  String get ForgetPassword {
    return Intl.message(
      'Forget Password',
      name: 'ForgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `phone is wrong, check phone & try again`
  String get email_wrong {
    return Intl.message(
      'phone is wrong, check phone & try again',
      name: 'email_wrong',
      desc: '',
      args: [],
    );
  }

  /// `Password Changed Successfully`
  String get pass_change_success {
    return Intl.message(
      'Password Changed Successfully',
      name: 'pass_change_success',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password below`
  String get enter_pass_below {
    return Intl.message(
      'Enter your new password below',
      name: 'enter_pass_below',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change password`
  String get failed_change_pass {
    return Intl.message(
      'Failed to change password',
      name: 'failed_change_pass',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Clothing Exhibition`
  String get onboard_1 {
    return Intl.message(
      'Clothing Exhibition',
      name: 'onboard_1',
      desc: '',
      args: [],
    );
  }

  /// `We offer a diverse range of sizes and styles, allowing you to choose your clothes with elegance and distinction.`
  String get onboard_1_des {
    return Intl.message(
      'We offer a diverse range of sizes and styles, allowing you to choose your clothes with elegance and distinction.',
      name: 'onboard_1_des',
      desc: '',
      args: [],
    );
  }

  /// `Specializing in\nClothing Embroidery`
  String get onboard_2 {
    return Intl.message(
      'Specializing in\nClothing Embroidery',
      name: 'onboard_2',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy the embroidery of logos and phrases you love on your own clothes.`
  String get onboard_2_des {
    return Intl.message(
      'Enjoy the embroidery of logos and phrases you love on your own clothes.',
      name: 'onboard_2_des',
      desc: '',
      args: [],
    );
  }

  /// `Shop Online`
  String get onboard_3 {
    return Intl.message(
      'Shop Online',
      name: 'onboard_3',
      desc: '',
      args: [],
    );
  }

  /// `Hurry to purchase your embroidered and distinctive clothing `
  String get onboard_3_des {
    return Intl.message(
      'Hurry to purchase your embroidered and distinctive clothing ',
      name: 'onboard_3_des',
      desc: '',
      args: [],
    );
  }

  /// `Seller`
  String get seller {
    return Intl.message(
      'Seller',
      name: 'seller',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `success`
  String get success {
    return Intl.message(
      'success',
      name: 'success',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
