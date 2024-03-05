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

  /// `Buyer`
  String get buyer {
    return Intl.message(
      'Buyer',
      name: 'buyer',
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

  /// `Customer Support`
  String get cs {
    return Intl.message(
      'Customer Support',
      name: 'cs',
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

  /// `success`
  String get success {
    return Intl.message(
      'success',
      name: 'success',
      desc: '',
      args: [],
    );
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

  /// `success with not content`
  String get no_content {
    return Intl.message(
      'success with not content',
      name: 'no_content',
      desc: '',
      args: [],
    );
  }

  /// `Choose an option to continue`
  String get multiple_choices {
    return Intl.message(
      'Choose an option to continue',
      name: 'multiple_choices',
      desc: '',
      args: [],
    );
  }

  /// `This URL is no longer available`
  String get moved_permanently {
    return Intl.message(
      'This URL is no longer available',
      name: 'moved_permanently',
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

  /// `user unauthorized, try again later`
  String get unauthorized_error {
    return Intl.message(
      'user unauthorized, try again later',
      name: 'unauthorized_error',
      desc: '',
      args: [],
    );
  }

  /// `Payment Required`
  String get payment_required {
    return Intl.message(
      'Payment Required',
      name: 'payment_required',
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

  /// `Invalid data, please try again`
  String get bad_gateway {
    return Intl.message(
      'Invalid data, please try again',
      name: 'bad_gateway',
      desc: '',
      args: [],
    );
  }

  /// `Server is under maintenance`
  String get service_unavailable {
    return Intl.message(
      'Server is under maintenance',
      name: 'service_unavailable',
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

  /// `conflict found, try again later`
  String get conflict_error {
    return Intl.message(
      'conflict found, try again later',
      name: 'conflict_error',
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

  /// `some thing went wrong, try again later`
  String get unknown_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'unknown_error',
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

  /// `some thing went wrong, try again later`
  String get default_error {
    return Intl.message(
      'some thing went wrong, try again later',
      name: 'default_error',
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

  /// `Please check your internet connection`
  String get no_internet_error {
    return Intl.message(
      'Please check your internet connection',
      name: 'no_internet_error',
      desc: '',
      args: [],
    );
  }

  /// `Unsupported, please try Again later`
  String get method_not_allowed_error {
    return Intl.message(
      'Unsupported, please try Again later',
      name: 'method_not_allowed_error',
      desc: '',
      args: [],
    );
  }

  /// `Login Successful`
  String get loginSuccessful {
    return Intl.message(
      'Login Successful',
      name: 'loginSuccessful',
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
  String get plzEnterYourEmail {
    return Intl.message(
      'Please enter your email',
      name: 'plzEnterYourEmail',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get plzEnterValidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'plzEnterValidEmail',
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
  String get passConfirm {
    return Intl.message(
      'Password Confirmation',
      name: 'passConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Pass`
  String get forgotPass {
    return Intl.message(
      'Forgot Pass',
      name: 'forgotPass',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account?`
  String get doNotHaveAccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'doNotHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register Now`
  String get registerNow {
    return Intl.message(
      'Register Now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Remember Me`
  String get rememberMe {
    return Intl.message(
      'Remember Me',
      name: 'rememberMe',
      desc: '',
      args: [],
    );
  }

  /// `Email can't be empty`
  String get emailCantBeEmpty {
    return Intl.message(
      'Email can\'t be empty',
      name: 'emailCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get pleaseEnterAValidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'pleaseEnterAValidEmail',
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

  /// `First Name can't be empty`
  String get firstNameCantBeEmpty {
    return Intl.message(
      'First Name can\'t be empty',
      name: 'firstNameCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Last Name can't be empty`
  String get lastNameCantBeEmpty {
    return Intl.message(
      'Last Name can\'t be empty',
      name: 'lastNameCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid phone number`
  String get pleaseEnterAValidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number',
      name: 'pleaseEnterAValidPhoneNumber',
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

  /// `Phone Number`
  String get phoneNumber {
    return Intl.message(
      'Phone Number',
      name: 'phoneNumber',
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
  String get passwordCaNotBeEmpty {
    return Intl.message(
      'Password must be entered',
      name: 'passwordCaNotBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Password must be 8 chars at least`
  String get passwordTooShort {
    return Intl.message(
      'Password must be 8 chars at least',
      name: 'passwordTooShort',
      desc: '',
      args: [],
    );
  }

  /// `Registered Successfully`
  String get registeredSuccessfully {
    return Intl.message(
      'Registered Successfully',
      name: 'registeredSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Password confirmation can't be empty`
  String get passConfirmCantBeEmpty {
    return Intl.message(
      'Password confirmation can\'t be empty',
      name: 'passConfirmCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Passwords doesn't match`
  String get passwordsDoesNotMatch {
    return Intl.message(
      'Passwords doesn\'t match',
      name: 'passwordsDoesNotMatch',
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
  String get sendCode {
    return Intl.message(
      'send code',
      name: 'sendCode',
      desc: '',
      args: [],
    );
  }

  /// `Verify Code`
  String get verificationCode {
    return Intl.message(
      'Verify Code',
      name: 'verificationCode',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code sent to your phone`
  String get verificationCodeSent {
    return Intl.message(
      'Verification Code sent to your phone',
      name: 'verificationCodeSent',
      desc: '',
      args: [],
    );
  }

  /// `Verification code can't empty`
  String get verificationCodeCantEmpty {
    return Intl.message(
      'Verification code can\'t empty',
      name: 'verificationCodeCantEmpty',
      desc: '',
      args: [],
    );
  }

  /// `phone used`
  String get phoneAlreadyUsed {
    return Intl.message(
      'phone used',
      name: 'phoneAlreadyUsed',
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
  String get otpSentTo {
    return Intl.message(
      'OTP sent to',
      name: 'otpSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Account Verified Successfully`
  String get accountVerifiedSuccessfully {
    return Intl.message(
      'Account Verified Successfully',
      name: 'accountVerifiedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Failed to verify account`
  String get failedToVerifyAccount {
    return Intl.message(
      'Failed to verify account',
      name: 'failedToVerifyAccount',
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
  String get wrongPhoneCheckAgain {
    return Intl.message(
      'phone is wrong, check phone & try again',
      name: 'wrongPhoneCheckAgain',
      desc: '',
      args: [],
    );
  }

  /// `Password Changed Successfully`
  String get passwordChangedSuccessfully {
    return Intl.message(
      'Password Changed Successfully',
      name: 'passwordChangedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Enter your new password below`
  String get enterYourNewPassword {
    return Intl.message(
      'Enter your new password below',
      name: 'enterYourNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Failed to change password`
  String get failedToChangePassword {
    return Intl.message(
      'Failed to change password',
      name: 'failedToChangePassword',
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

  /// `Good Morning`
  String get goodMorning {
    return Intl.message(
      'Good Morning',
      name: 'goodMorning',
      desc: '',
      args: [],
    );
  }

  /// `Search For`
  String get searchFor {
    return Intl.message(
      'Search For',
      name: 'searchFor',
      desc: '',
      args: [],
    );
  }

  /// `Services`
  String get services {
    return Intl.message(
      'Services',
      name: 'services',
      desc: '',
      args: [],
    );
  }

  /// `Products`
  String get products {
    return Intl.message(
      'Products',
      name: 'products',
      desc: '',
      args: [],
    );
  }

  /// `see more`
  String get seeMore {
    return Intl.message(
      'see more',
      name: 'seeMore',
      desc: '',
      args: [],
    );
  }

  /// `products categories`
  String get productsCategories {
    return Intl.message(
      'products categories',
      name: 'productsCategories',
      desc: '',
      args: [],
    );
  }

  /// `Availability:`
  String get availability {
    return Intl.message(
      'Availability:',
      name: 'availability',
      desc: '',
      args: [],
    );
  }

  /// `SKU:`
  String get sku {
    return Intl.message(
      'SKU:',
      name: 'sku',
      desc: '',
      args: [],
    );
  }

  /// `Select date and time of delivery`
  String get selectDateAndTimeOfDelivery {
    return Intl.message(
      'Select date and time of delivery',
      name: 'selectDateAndTimeOfDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Date`
  String get deliveryDate {
    return Intl.message(
      'Delivery Date',
      name: 'deliveryDate',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Time`
  String get deliveryTime {
    return Intl.message(
      'Delivery Time',
      name: 'deliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `add to cart`
  String get addToCart {
    return Intl.message(
      'add to cart',
      name: 'addToCart',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Select date and time you like us to start`
  String get selectDateAndTimeYouLikeUsToStart {
    return Intl.message(
      'Select date and time you like us to start',
      name: 'selectDateAndTimeYouLikeUsToStart',
      desc: '',
      args: [],
    );
  }

  /// `What Date would you like us to start?`
  String get whatDateWouldYouLikeUsToStart {
    return Intl.message(
      'What Date would you like us to start?',
      name: 'whatDateWouldYouLikeUsToStart',
      desc: '',
      args: [],
    );
  }

  /// `What time would you like us to start?`
  String get whatTimeWouldYouLikeUsToStart {
    return Intl.message(
      'What time would you like us to start?',
      name: 'whatTimeWouldYouLikeUsToStart',
      desc: '',
      args: [],
    );
  }

  /// `free cancellation until 12 hours before the start of your booking`
  String get freeCancellationUntil12HoursBeforeTheStartOfYour {
    return Intl.message(
      'free cancellation until 12 hours before the start of your booking',
      name: 'freeCancellationUntil12HoursBeforeTheStartOfYour',
      desc: '',
      args: [],
    );
  }

  /// `Any Specific instructions?`
  String get anySpecificInstructions {
    return Intl.message(
      'Any Specific instructions?',
      name: 'anySpecificInstructions',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `AED`
  String get Aed {
    return Intl.message(
      'AED',
      name: 'Aed',
      desc: '',
      args: [],
    );
  }

  /// `Instructions`
  String get instructions {
    return Intl.message(
      'Instructions',
      name: 'instructions',
      desc: '',
      args: [],
    );
  }

  /// `you Already Add one Service`
  String get youAlreadyAddOneService {
    return Intl.message(
      'you Already Add one Service',
      name: 'youAlreadyAddOneService',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get my_orders {
    return Intl.message(
      'My Orders',
      name: 'my_orders',
      desc: '',
      args: [],
    );
  }

  /// `Edit profile`
  String get editProfile {
    return Intl.message(
      'Edit profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `My orders`
  String get myOrders {
    return Intl.message(
      'My orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Payment Methods`
  String get paymentMethods {
    return Intl.message(
      'Payment Methods',
      name: 'paymentMethods',
      desc: '',
      args: [],
    );
  }

  /// `Gift Card`
  String get giftCard {
    return Intl.message(
      'Gift Card',
      name: 'giftCard',
      desc: '',
      args: [],
    );
  }

  /// `Get Help`
  String get getHelp {
    return Intl.message(
      'Get Help',
      name: 'getHelp',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccount {
    return Intl.message(
      'Delete account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Account updated successfully`
  String get accountUpdatedSuccessfully {
    return Intl.message(
      'Account updated successfully',
      name: 'accountUpdatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `account deleted successfully`
  String get accountDeletedSuccessfully {
    return Intl.message(
      'account deleted successfully',
      name: 'accountDeletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `update account`
  String get updateAccount {
    return Intl.message(
      'update account',
      name: 'updateAccount',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get termsAndConditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'termsAndConditions',
      desc: '',
      args: [],
    );
  }

  /// `choose language`
  String get change_language {
    return Intl.message(
      'choose language',
      name: 'change_language',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Your message sent successfully`
  String get yourMessageSentSuccessfully {
    return Intl.message(
      'Your message sent successfully',
      name: 'yourMessageSentSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contactUs {
    return Intl.message(
      'Contact Us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message {
    return Intl.message(
      'Message',
      name: 'message',
      desc: '',
      args: [],
    );
  }

  /// `Your Message`
  String get yourMessage {
    return Intl.message(
      'Your Message',
      name: 'yourMessage',
      desc: '',
      args: [],
    );
  }

  /// `send`
  String get send {
    return Intl.message(
      'send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Shipped`
  String get shipped {
    return Intl.message(
      'Shipped',
      name: 'shipped',
      desc: '',
      args: [],
    );
  }

  /// `Processing`
  String get processing {
    return Intl.message(
      'Processing',
      name: 'processing',
      desc: '',
      args: [],
    );
  }

  /// `shipped`
  String get shipped_status {
    return Intl.message(
      'shipped',
      name: 'shipped_status',
      desc: '',
      args: [],
    );
  }

  /// `completed`
  String get done_status {
    return Intl.message(
      'completed',
      name: 'done_status',
      desc: '',
      args: [],
    );
  }

  /// `cancelled`
  String get cancelled_status {
    return Intl.message(
      'cancelled',
      name: 'cancelled_status',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `orders`
  String get orders {
    return Intl.message(
      'orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `what orders do you want`
  String get whatOrdersDoYouWant {
    return Intl.message(
      'what orders do you want',
      name: 'whatOrdersDoYouWant',
      desc: '',
      args: [],
    );
  }

  /// `order cancel successfully`
  String get orderCancelSuccessfully {
    return Intl.message(
      'order cancel successfully',
      name: 'orderCancelSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `you must add address first`
  String get youMustAddAddressFirst {
    return Intl.message(
      'you must add address first',
      name: 'youMustAddAddressFirst',
      desc: '',
      args: [],
    );
  }

  /// `order number `
  String get orderNumber {
    return Intl.message(
      'order number ',
      name: 'orderNumber',
      desc: '',
      args: [],
    );
  }

  /// `Pending access to`
  String get pendingAccessTo {
    return Intl.message(
      'Pending access to',
      name: 'pendingAccessTo',
      desc: '',
      args: [],
    );
  }

  /// `track order`
  String get trackOrder {
    return Intl.message(
      'track order',
      name: 'trackOrder',
      desc: '',
      args: [],
    );
  }

  /// `The executed order`
  String get theExecutedOrder {
    return Intl.message(
      'The executed order',
      name: 'theExecutedOrder',
      desc: '',
      args: [],
    );
  }

  /// `quantity`
  String get quantity {
    return Intl.message(
      'quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Estimated time of arrival (ETA)`
  String get estimatedTimeOfArrivalEta {
    return Intl.message(
      'Estimated time of arrival (ETA)',
      name: 'estimatedTimeOfArrivalEta',
      desc: '',
      args: [],
    );
  }

  /// `are you sure you want to delete order`
  String get cancelAlert {
    return Intl.message(
      'are you sure you want to delete order',
      name: 'cancelAlert',
      desc: '',
      args: [],
    );
  }

  /// `yes`
  String get yes {
    return Intl.message(
      'yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `close`
  String get close {
    return Intl.message(
      'close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `cancel order`
  String get cancelOrder {
    return Intl.message(
      'cancel order',
      name: 'cancelOrder',
      desc: '',
      args: [],
    );
  }

  /// `Delivery request accepted`
  String get deliveryRequestAccepted {
    return Intl.message(
      'Delivery request accepted',
      name: 'deliveryRequestAccepted',
      desc: '',
      args: [],
    );
  }

  /// `Order preparation`
  String get orderPreparation {
    return Intl.message(
      'Order preparation',
      name: 'orderPreparation',
      desc: '',
      args: [],
    );
  }

  /// `Your order is ready for delivery`
  String get yourOrderIsReadyForDelivery {
    return Intl.message(
      'Your order is ready for delivery',
      name: 'yourOrderIsReadyForDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Order successfully delivered`
  String get orderSuccessfullyDelivered {
    return Intl.message(
      'Order successfully delivered',
      name: 'orderSuccessfullyDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount {
    return Intl.message(
      'Amount',
      name: 'amount',
      desc: '',
      args: [],
    );
  }

  /// `cart`
  String get cart {
    return Intl.message(
      'cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `total`
  String get total {
    return Intl.message(
      'total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `sub total`
  String get subTotal {
    return Intl.message(
      'sub total',
      name: 'subTotal',
      desc: '',
      args: [],
    );
  }

  /// `delivery fee`
  String get deliveryFee {
    return Intl.message(
      'delivery fee',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `tax`
  String get tax {
    return Intl.message(
      'tax',
      name: 'tax',
      desc: '',
      args: [],
    );
  }

  /// `Complete payment`
  String get completePayment {
    return Intl.message(
      'Complete payment',
      name: 'completePayment',
      desc: '',
      args: [],
    );
  }

  /// `Your cart is empty`
  String get yourCartIsEmpty {
    return Intl.message(
      'Your cart is empty',
      name: 'yourCartIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Choose Address`
  String get chooseAddress {
    return Intl.message(
      'Choose Address',
      name: 'chooseAddress',
      desc: '',
      args: [],
    );
  }

  /// `Building No.`
  String get buildingNo {
    return Intl.message(
      'Building No.',
      name: 'buildingNo',
      desc: '',
      args: [],
    );
  }

  /// `Building No. can't be empty`
  String get buildingNoCantBeEmpty {
    return Intl.message(
      'Building No. can\'t be empty',
      name: 'buildingNoCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Flat No.`
  String get flatNo {
    return Intl.message(
      'Flat No.',
      name: 'flatNo',
      desc: '',
      args: [],
    );
  }

  /// `Flat No. can't be empty`
  String get flatNoCantBeEmpty {
    return Intl.message(
      'Flat No. can\'t be empty',
      name: 'flatNoCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Phone No. can't be empty`
  String get phoneNoCantBeEmpty {
    return Intl.message(
      'Phone No. can\'t be empty',
      name: 'phoneNoCantBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `Add Address`
  String get addAddress {
    return Intl.message(
      'Add Address',
      name: 'addAddress',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get postalCode {
    return Intl.message(
      'Postal Code',
      name: 'postalCode',
      desc: '',
      args: [],
    );
  }

  /// `Add New Address`
  String get addNewAddress {
    return Intl.message(
      'Add New Address',
      name: 'addNewAddress',
      desc: '',
      args: [],
    );
  }

  /// `New Address`
  String get newAddress {
    return Intl.message(
      'New Address',
      name: 'newAddress',
      desc: '',
      args: [],
    );
  }

  /// `Saved Addresses`
  String get savedAddresses {
    return Intl.message(
      'Saved Addresses',
      name: 'savedAddresses',
      desc: '',
      args: [],
    );
  }

  /// `See Transaction`
  String get seeTransaction {
    return Intl.message(
      'See Transaction',
      name: 'seeTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Send a Gift Card`
  String get sendAGiftCard {
    return Intl.message(
      'Send a Gift Card',
      name: 'sendAGiftCard',
      desc: '',
      args: [],
    );
  }

  /// `Available Credits`
  String get availableCredits {
    return Intl.message(
      'Available Credits',
      name: 'availableCredits',
      desc: '',
      args: [],
    );
  }

  /// `Select a package that suits you best and earn up to 18% on all services`
  String get selectAPackageThatSuitsYouBestAndEarnUp {
    return Intl.message(
      'Select a package that suits you best and earn up to 18% on all services',
      name: 'selectAPackageThatSuitsYouBestAndEarnUp',
      desc: '',
      args: [],
    );
  }

  /// `Buy Credit`
  String get buyCredit {
    return Intl.message(
      'Buy Credit',
      name: 'buyCredit',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get paymentMethod {
    return Intl.message(
      'Payment Method',
      name: 'paymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
      desc: '',
      args: [],
    );
  }

  /// `card holder name`
  String get cardHolderName {
    return Intl.message(
      'card holder name',
      name: 'cardHolderName',
      desc: '',
      args: [],
    );
  }

  /// `card number`
  String get cardNumber {
    return Intl.message(
      'card number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `card date`
  String get cardDate {
    return Intl.message(
      'card date',
      name: 'cardDate',
      desc: '',
      args: [],
    );
  }

  /// `cvv`
  String get cvv {
    return Intl.message(
      'cvv',
      name: 'cvv',
      desc: '',
      args: [],
    );
  }

  /// `Add Voucher Code`
  String get addVoucherCode {
    return Intl.message(
      'Add Voucher Code',
      name: 'addVoucherCode',
      desc: '',
      args: [],
    );
  }

  /// `Voucher Code`
  String get voucherCode {
    return Intl.message(
      'Voucher Code',
      name: 'voucherCode',
      desc: '',
      args: [],
    );
  }

  /// `Payment summary`
  String get paymentSummary {
    return Intl.message(
      'Payment summary',
      name: 'paymentSummary',
      desc: '',
      args: [],
    );
  }

  /// `confirm payment`
  String get confirmPayment {
    return Intl.message(
      'confirm payment',
      name: 'confirmPayment',
      desc: '',
      args: [],
    );
  }

  /// `Choose your preferred payment method`
  String get preferredPaymentMethod {
    return Intl.message(
      'Choose your preferred payment method',
      name: 'preferredPaymentMethod',
      desc: '',
      args: [],
    );
  }

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
      desc: '',
      args: [],
    );
  }

  /// `Credit Card`
  String get creditCard {
    return Intl.message(
      'Credit Card',
      name: 'creditCard',
      desc: '',
      args: [],
    );
  }

  /// `Order created successfully`
  String get orderCreatedSuccessfully {
    return Intl.message(
      'Order created successfully',
      name: 'orderCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `apply`
  String get apply {
    return Intl.message(
      'apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `voucher discount`
  String get voucherDiscount {
    return Intl.message(
      'voucher discount',
      name: 'voucherDiscount',
      desc: '',
      args: [],
    );
  }

  /// `Pay Less & Get More`
  String get payLessGetMore {
    return Intl.message(
      'Pay Less & Get More',
      name: 'payLessGetMore',
      desc: '',
      args: [],
    );
  }

  /// `BASIC PACKAGE`
  String get basicPackage {
    return Intl.message(
      'BASIC PACKAGE',
      name: 'basicPackage',
      desc: '',
      args: [],
    );
  }

  /// `Get AED 300 worth of knock knock credit for price of AED 279`
  String get getAed300WorthOfKnockKnockCreditForPrice {
    return Intl.message(
      'Get AED 300 worth of knock knock credit for price of AED 279',
      name: 'getAed300WorthOfKnockKnockCreditForPrice',
      desc: '',
      args: [],
    );
  }

  /// `Earn 8% More`
  String get earn8More {
    return Intl.message(
      'Earn 8% More',
      name: 'earn8More',
      desc: '',
      args: [],
    );
  }

  /// `Vaild for 30 days on all home services`
  String get vaildFor30DaysOnAllHomeServices {
    return Intl.message(
      'Vaild for 30 days on all home services',
      name: 'vaildFor30DaysOnAllHomeServices',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buyNow {
    return Intl.message(
      'Buy Now',
      name: 'buyNow',
      desc: '',
      args: [],
    );
  }

  /// `The perfect gift card for your loved one!`
  String get thePerfectGiftCardForYourLovedOne {
    return Intl.message(
      'The perfect gift card for your loved one!',
      name: 'thePerfectGiftCardForYourLovedOne',
      desc: '',
      args: [],
    );
  }

  /// `Treat them to their favorite home  service!`
  String get treatThemToTheirFavoriteHomeService {
    return Intl.message(
      'Treat them to their favorite home  service!',
      name: 'treatThemToTheirFavoriteHomeService',
      desc: '',
      args: [],
    );
  }

  /// `Select Gift Amount`
  String get selectGiftAmount {
    return Intl.message(
      'Select Gift Amount',
      name: 'selectGiftAmount',
      desc: '',
      args: [],
    );
  }

  /// `Enter Amount`
  String get enterAmount {
    return Intl.message(
      'Enter Amount',
      name: 'enterAmount',
      desc: '',
      args: [],
    );
  }

  /// `Your Message (Optional)`
  String get yourMessageOptional {
    return Intl.message(
      'Your Message (Optional)',
      name: 'yourMessageOptional',
      desc: '',
      args: [],
    );
  }

  /// `Account number of the person you love`
  String get accountNumberOfThePersonYouLove {
    return Intl.message(
      'Account number of the person you love',
      name: 'accountNumberOfThePersonYouLove',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Booking`
  String get booking {
    return Intl.message(
      'Booking',
      name: 'booking',
      desc: '',
      args: [],
    );
  }

  /// `Credits`
  String get credits {
    return Intl.message(
      'Credits',
      name: 'credits',
      desc: '',
      args: [],
    );
  }

  /// `no internet connection`
  String get noInternetConnection {
    return Intl.message(
      'no internet connection',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `payment success`
  String get paymentSuccess {
    return Intl.message(
      'payment success',
      name: 'paymentSuccess',
      desc: '',
      args: [],
    );
  }

  /// `payment failed`
  String get paymentFailed {
    return Intl.message(
      'payment failed',
      name: 'paymentFailed',
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
