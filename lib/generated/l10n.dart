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

  /// `Don't have an account?`
  String get do_not_have_account {
    return Intl.message(
      'Don\'t have an account?',
      name: 'do_not_have_account',
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

  /// `Enter your email`
  String get enter_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_email',
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

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
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

  /// `Forgot Pass`
  String get forgot_pass {
    return Intl.message(
      'Forgot Pass',
      name: 'forgot_pass',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message(
      'Full Name',
      name: 'full_name',
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

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Login Now`
  String get login_now {
    return Intl.message(
      'Login Now',
      name: 'login_now',
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

  /// `Password`
  String get pass {
    return Intl.message(
      'Password',
      name: 'pass',
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

  /// `Password Confirmation`
  String get pass_confirm {
    return Intl.message(
      'Password Confirmation',
      name: 'pass_confirm',
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

  /// `Register Now`
  String get register_now {
    return Intl.message(
      'Register Now',
      name: 'register_now',
      desc: '',
      args: [],
    );
  }

  /// `Remember password?`
  String get remember_pass {
    return Intl.message(
      'Remember password?',
      name: 'remember_pass',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code {
    return Intl.message(
      'Resend Code',
      name: 'resend_code',
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

  /// `Send Code`
  String get send_code {
    return Intl.message(
      'Send Code',
      name: 'send_code',
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

  /// `Verify Code`
  String get verify_code {
    return Intl.message(
      'Verify Code',
      name: 'verify_code',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code sent to your email`
  String get verify_code_sent {
    return Intl.message(
      'Verification Code sent to your email',
      name: 'verify_code_sent',
      desc: '',
      args: [],
    );
  }

  /// `What are you thinking about?`
  String get you_think {
    return Intl.message(
      'What are you thinking about?',
      name: 'you_think',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to shopping world`
  String get shopping_world {
    return Intl.message(
      'Welcome to shopping world',
      name: 'shopping_world',
      desc: '',
      args: [],
    );
  }

  /// `Let's help you find the right clothing for you\n and embroider the logo and phrases you love`
  String get slogan {
    return Intl.message(
      'Let\'s help you find the right clothing for you\n and embroider the logo and phrases you love',
      name: 'slogan',
      desc: '',
      args: [],
    );
  }

  /// `Soon`
  String get soon {
    return Intl.message(
      'Soon',
      name: 'soon',
      desc: '',
      args: [],
    );
  }

  /// `Embroidery logos`
  String get custom_logo {
    return Intl.message(
      'Embroidery logos',
      name: 'custom_logo',
      desc: '',
      args: [],
    );
  }

  /// `A wide range of distinctive logos & phrases that are uniquely and distinctively embroidered`
  String get wide_range {
    return Intl.message(
      'A wide range of distinctive logos & phrases that are uniquely and distinctively embroidered',
      name: 'wide_range',
      desc: '',
      args: [],
    );
  }

  /// `Browse Now`
  String get browse_now {
    return Intl.message(
      'Browse Now',
      name: 'browse_now',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories {
    return Intl.message(
      'Categories',
      name: 'categories',
      desc: '',
      args: [],
    );
  }

  /// `Most Popular`
  String get popular {
    return Intl.message(
      'Most Popular',
      name: 'popular',
      desc: '',
      args: [],
    );
  }

  /// `More...`
  String get more {
    return Intl.message(
      'More...',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Newly Released`
  String get new_releases {
    return Intl.message(
      'Newly Released',
      name: 'new_releases',
      desc: '',
      args: [],
    );
  }

  /// `SAR`
  String get sar {
    return Intl.message(
      'SAR',
      name: 'sar',
      desc: '',
      args: [],
    );
  }

  /// `View Details`
  String get view_details {
    return Intl.message(
      'View Details',
      name: 'view_details',
      desc: '',
      args: [],
    );
  }

  /// `Short Clothes`
  String get short_cloths {
    return Intl.message(
      'Short Clothes',
      name: 'short_cloths',
      desc: '',
      args: [],
    );
  }

  /// `Custom Phrases Embroidery`
  String get custom_phrases {
    return Intl.message(
      'Custom Phrases Embroidery',
      name: 'custom_phrases',
      desc: '',
      args: [],
    );
  }

  /// `Colors`
  String get colors {
    return Intl.message(
      'Colors',
      name: 'colors',
      desc: '',
      args: [],
    );
  }

  /// `Sizes`
  String get sizes {
    return Intl.message(
      'Sizes',
      name: 'sizes',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get add_to_cart {
    return Intl.message(
      'Add to Cart',
      name: 'add_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get qty {
    return Intl.message(
      'Quantity',
      name: 'qty',
      desc: '',
      args: [],
    );
  }

  /// `Short Clothing Category`
  String get short_cloth_category {
    return Intl.message(
      'Short Clothing Category',
      name: 'short_cloth_category',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message(
      'All',
      name: 'all',
      desc: '',
      args: [],
    );
  }

  /// `favorite`
  String get favorite {
    return Intl.message(
      'favorite',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get user_profile {
    return Intl.message(
      'Profile',
      name: 'user_profile',
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

  /// `Saved Address`
  String get saved_address {
    return Intl.message(
      'Saved Address',
      name: 'saved_address',
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

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Terms and Conditions`
  String get terms_and_conditions {
    return Intl.message(
      'Terms and Conditions',
      name: 'terms_and_conditions',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get contact_us {
    return Intl.message(
      'Contact Us',
      name: 'contact_us',
      desc: '',
      args: [],
    );
  }

  /// `Allow notifications`
  String get allow_notifications {
    return Intl.message(
      'Allow notifications',
      name: 'allow_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Offers and discounts`
  String get offers_and_discounts {
    return Intl.message(
      'Offers and discounts',
      name: 'offers_and_discounts',
      desc: '',
      args: [],
    );
  }

  /// `New updates`
  String get new_updates {
    return Intl.message(
      'New updates',
      name: 'new_updates',
      desc: '',
      args: [],
    );
  }

  /// `Status of orders`
  String get status_of_orders {
    return Intl.message(
      'Status of orders',
      name: 'status_of_orders',
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

  /// `send`
  String get send {
    return Intl.message(
      'send',
      name: 'send',
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

  /// `Our privacy policy describes how we retain and process your personal information, what we keep about you, how and why we obtain this information from you, your rights, with whom we share your personal information, the duration of our information retention, and how we maintain the security of your data.`
  String get privacy_des_1 {
    return Intl.message(
      'Our privacy policy describes how we retain and process your personal information, what we keep about you, how and why we obtain this information from you, your rights, with whom we share your personal information, the duration of our information retention, and how we maintain the security of your data.',
      name: 'privacy_des_1',
      desc: '',
      args: [],
    );
  }

  /// `Based on family values, we see each customer as one of us and respect the protection of your privacy. We want you to understand how we use your personal information to provide you with the solutions and services you need. If you have any questions, reach out to us through our application, or call us at + (966) 798743333, or email us at ForYou@Support.com.`
  String get privacy_des_2 {
    return Intl.message(
      'Based on family values, we see each customer as one of us and respect the protection of your privacy. We want you to understand how we use your personal information to provide you with the solutions and services you need. If you have any questions, reach out to us through our application, or call us at + (966) 798743333, or email us at ForYou@Support.com.',
      name: 'privacy_des_2',
      desc: '',
      args: [],
    );
  }

  /// `If we change the way we process and use your personal information, we will notify you immediately via email and by updating our application.`
  String get privacy_des_3 {
    return Intl.message(
      'If we change the way we process and use your personal information, we will notify you immediately via email and by updating our application.',
      name: 'privacy_des_3',
      desc: '',
      args: [],
    );
  }

  /// `What We Hold About You`
  String get about_you {
    return Intl.message(
      'What We Hold About You',
      name: 'about_you',
      desc: '',
      args: [],
    );
  }

  /// `We collect and process personal information throughout our journey together to maintain the security of your account. Here's what we keep about you:`
  String get about_you_des_1 {
    return Intl.message(
      'We collect and process personal information throughout our journey together to maintain the security of your account. Here\'s what we keep about you:',
      name: 'about_you_des_1',
      desc: '',
      args: [],
    );
  }

  /// `• Information you provide through our application`
  String get your_info_1 {
    return Intl.message(
      '• Information you provide through our application',
      name: 'your_info_1',
      desc: '',
      args: [],
    );
  }

  /// `Your Order has been Confirmed!`
  String get order_confirmed {
    return Intl.message(
      'Your Order has been Confirmed!',
      name: 'order_confirmed',
      desc: '',
      args: [],
    );
  }

  /// `We have received your order, and we are busy preparing it for you. We will contact you when it's ready for pickup. Thank you for choosing us!`
  String get order_confirmed_msg {
    return Intl.message(
      'We have received your order, and we are busy preparing it for you. We will contact you when it\'s ready for pickup. Thank you for choosing us!',
      name: 'order_confirmed_msg',
      desc: '',
      args: [],
    );
  }

  /// `Track Your Order`
  String get track_order_btn {
    return Intl.message(
      'Track Your Order',
      name: 'track_order_btn',
      desc: '',
      args: [],
    );
  }

  /// `Continue Browsing`
  String get continue_browsing {
    return Intl.message(
      'Continue Browsing',
      name: 'continue_browsing',
      desc: '',
      args: [],
    );
  }

  /// `In case you encounter any issues, you can contact`
  String get order_problem {
    return Intl.message(
      'In case you encounter any issues, you can contact',
      name: 'order_problem',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get order_no {
    return Intl.message(
      'Order Number',
      name: 'order_no',
      desc: '',
      args: [],
    );
  }

  /// `Estimated Arrival Time`
  String get est {
    return Intl.message(
      'Estimated Arrival Time',
      name: 'est',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get cancel_order {
    return Intl.message(
      'Cancel Order',
      name: 'cancel_order',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to cancel this order?`
  String get cancel_alert {
    return Intl.message(
      'Are you sure you want to cancel this order?',
      name: 'cancel_alert',
      desc: '',
      args: [],
    );
  }

  /// `Yes, Cancel`
  String get cancel_yes {
    return Intl.message(
      'Yes, Cancel',
      name: 'cancel_yes',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Track Order`
  String get track_order {
    return Intl.message(
      'Track Order',
      name: 'track_order',
      desc: '',
      args: [],
    );
  }

  /// `Prepare Order`
  String get prepare_order {
    return Intl.message(
      'Prepare Order',
      name: 'prepare_order',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Completed`
  String get done {
    return Intl.message(
      'Completed',
      name: 'done',
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

  /// `Cancelled`
  String get cancelled {
    return Intl.message(
      'Cancelled',
      name: 'cancelled',
      desc: '',
      args: [],
    );
  }

  /// `Arriving To`
  String get arriving_to {
    return Intl.message(
      'Arriving To',
      name: 'arriving_to',
      desc: '',
      args: [],
    );
  }

  /// `Executed Request`
  String get executed_request {
    return Intl.message(
      'Executed Request',
      name: 'executed_request',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Fee`
  String get delivery_fee {
    return Intl.message(
      'Delivery Fee',
      name: 'delivery_fee',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get cart {
    return Intl.message(
      'Shopping Cart',
      name: 'cart',
      desc: '',
      args: [],
    );
  }

  /// `Payment`
  String get payment {
    return Intl.message(
      'Payment',
      name: 'payment',
      desc: '',
      args: [],
    );
  }

  /// `Ask the Recipient About the Delivery Address`
  String get ask_about_address {
    return Intl.message(
      'Ask the Recipient About the Delivery Address',
      name: 'ask_about_address',
      desc: '',
      args: [],
    );
  }

  /// `We will contact the recipient to obtain the address. Delivery time may be affected if we are unable to reach them.`
  String get ask_about_address_des {
    return Intl.message(
      'We will contact the recipient to obtain the address. Delivery time may be affected if we are unable to reach them.',
      name: 'ask_about_address_des',
      desc: '',
      args: [],
    );
  }

  /// `Gift Wrapping`
  String get wrap_gift {
    return Intl.message(
      'Gift Wrapping',
      name: 'wrap_gift',
      desc: '',
      args: [],
    );
  }

  /// `Add Wrapping to the Order`
  String get add_wrapping {
    return Intl.message(
      'Add Wrapping to the Order',
      name: 'add_wrapping',
      desc: '',
      args: [],
    );
  }

  /// `Buyer's Name`
  String get buyer_name {
    return Intl.message(
      'Buyer\'s Name',
      name: 'buyer_name',
      desc: '',
      args: [],
    );
  }

  /// `Buyer's Full Name`
  String get buyer_full_name {
    return Intl.message(
      'Buyer\'s Full Name',
      name: 'buyer_full_name',
      desc: '',
      args: [],
    );
  }

  /// `Buyer's Phone Number`
  String get buyer_phone {
    return Intl.message(
      'Buyer\'s Phone Number',
      name: 'buyer_phone',
      desc: '',
      args: [],
    );
  }

  /// `Buyer's Address`
  String get buyer_address {
    return Intl.message(
      'Buyer\'s Address',
      name: 'buyer_address',
      desc: '',
      args: [],
    );
  }

  /// `Buyer's Full Address`
  String get buyer_full_address {
    return Intl.message(
      'Buyer\'s Full Address',
      name: 'buyer_full_address',
      desc: '',
      args: [],
    );
  }

  /// `Choose from Saved Addresses`
  String get choose_address {
    return Intl.message(
      'Choose from Saved Addresses',
      name: 'choose_address',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get progress {
    return Intl.message(
      'Continue',
      name: 'progress',
      desc: '',
      args: [],
    );
  }

  /// `Saved Addresses`
  String get saved_addresses {
    return Intl.message(
      'Saved Addresses',
      name: 'saved_addresses',
      desc: '',
      args: [],
    );
  }

  /// `Add New Address`
  String get add_new_address {
    return Intl.message(
      'Add New Address',
      name: 'add_new_address',
      desc: '',
      args: [],
    );
  }

  /// `No charges will be incurred until this order is reviewed in the next step.`
  String get payment_alert {
    return Intl.message(
      'No charges will be incurred until this order is reviewed in the next step.',
      name: 'payment_alert',
      desc: '',
      args: [],
    );
  }

  /// `Add Promo Code`
  String get add_promo_code {
    return Intl.message(
      'Add Promo Code',
      name: 'add_promo_code',
      desc: '',
      args: [],
    );
  }

  /// `If you have a discount coupon, please add your\npromo code to benefit from the offer.`
  String get add_promo_code_des {
    return Intl.message(
      'If you have a discount coupon, please add your\npromo code to benefit from the offer.',
      name: 'add_promo_code_des',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Choose Payment Method`
  String get choose_payment_way {
    return Intl.message(
      'Choose Payment Method',
      name: 'choose_payment_way',
      desc: '',
      args: [],
    );
  }

  /// `Cardholder Name`
  String get card_holder_name {
    return Intl.message(
      'Cardholder Name',
      name: 'card_holder_name',
      desc: '',
      args: [],
    );
  }

  /// `Card Number`
  String get card_no {
    return Intl.message(
      'Card Number',
      name: 'card_no',
      desc: '',
      args: [],
    );
  }

  /// `Security Code`
  String get vcc {
    return Intl.message(
      'Security Code',
      name: 'vcc',
      desc: '',
      args: [],
    );
  }

  /// `Expiry Date`
  String get card_date {
    return Intl.message(
      'Expiry Date',
      name: 'card_date',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Order`
  String get confirm_order {
    return Intl.message(
      'Confirm Order',
      name: 'confirm_order',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm and submit your order`
  String get confirm_order_msg {
    return Intl.message(
      'Please confirm and submit your order',
      name: 'confirm_order_msg',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
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

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Order Summary`
  String get order_summary {
    return Intl.message(
      'Order Summary',
      name: 'order_summary',
      desc: '',
      args: [],
    );
  }

  /// `Edit Product`
  String get edit_product {
    return Intl.message(
      'Edit Product',
      name: 'edit_product',
      desc: '',
      args: [],
    );
  }

  /// `My Products`
  String get my_products {
    return Intl.message(
      'My Products',
      name: 'my_products',
      desc: '',
      args: [],
    );
  }

  /// `Send Money`
  String get send_money {
    return Intl.message(
      'Send Money',
      name: 'send_money',
      desc: '',
      args: [],
    );
  }

  /// `You can use your money and transfer it to your bank account`
  String get can_send_money {
    return Intl.message(
      'You can use your money and transfer it to your bank account',
      name: 'can_send_money',
      desc: '',
      args: [],
    );
  }

  /// `use points`
  String get use_points {
    return Intl.message(
      'use points',
      name: 'use_points',
      desc: '',
      args: [],
    );
  }

  /// `Date`
  String get date {
    return Intl.message(
      'Date',
      name: 'date',
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

  /// `code`
  String get code {
    return Intl.message(
      'code',
      name: 'code',
      desc: '',
      args: [],
    );
  }

  /// `Designs`
  String get designs {
    return Intl.message(
      'Designs',
      name: 'designs',
      desc: '',
      args: [],
    );
  }

  /// `Browse our most popular designs`
  String get desgin_text {
    return Intl.message(
      'Browse our most popular designs',
      name: 'desgin_text',
      desc: '',
      args: [],
    );
  }

  /// `Profit ratio`
  String get profit_ratio {
    return Intl.message(
      'Profit ratio',
      name: 'profit_ratio',
      desc: '',
      args: [],
    );
  }

  /// `Purchases`
  String get purchases {
    return Intl.message(
      'Purchases',
      name: 'purchases',
      desc: '',
      args: [],
    );
  }

  /// `Number of buyers`
  String get number_of_buyers {
    return Intl.message(
      'Number of buyers',
      name: 'number_of_buyers',
      desc: '',
      args: [],
    );
  }

  /// `My wallet`
  String get my_wallet {
    return Intl.message(
      'My wallet',
      name: 'my_wallet',
      desc: '',
      args: [],
    );
  }

  /// `Complete payment`
  String get complete_payment {
    return Intl.message(
      'Complete payment',
      name: 'complete_payment',
      desc: '',
      args: [],
    );
  }

  /// `Confirm payment`
  String get confirm_payment {
    return Intl.message(
      'Confirm payment',
      name: 'confirm_payment',
      desc: '',
      args: [],
    );
  }

  /// `Receiver information`
  String get receiver_information {
    return Intl.message(
      'Receiver information',
      name: 'receiver_information',
      desc: '',
      args: [],
    );
  }

  /// `Write your message here...`
  String get contact_message {
    return Intl.message(
      'Write your message here...',
      name: 'contact_message',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get delete_account {
    return Intl.message(
      'Delete account',
      name: 'delete_account',
      desc: '',
      args: [],
    );
  }

  /// `Subscriptions`
  String get subscriptions {
    return Intl.message(
      'Subscriptions',
      name: 'subscriptions',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to Subscriptions`
  String get subscriptions_title {
    return Intl.message(
      'Welcome to Subscriptions',
      name: 'subscriptions_title',
      desc: '',
      args: [],
    );
  }

  /// `Let us help you find the subscription package that suits you with a variety of packages that offer you profits and numerous features.`
  String get subscriptions_des {
    return Intl.message(
      'Let us help you find the subscription package that suits you with a variety of packages that offer you profits and numerous features.',
      name: 'subscriptions_des',
      desc: '',
      args: [],
    );
  }

  /// `Gold Package`
  String get gold_pack {
    return Intl.message(
      'Gold Package',
      name: 'gold_pack',
      desc: '',
      args: [],
    );
  }

  /// `Instead of`
  String get instead {
    return Intl.message(
      'Instead of',
      name: 'instead',
      desc: '',
      args: [],
    );
  }

  /// `Yearly Subscription`
  String get yearly_sub {
    return Intl.message(
      'Yearly Subscription',
      name: 'yearly_sub',
      desc: '',
      args: [],
    );
  }

  /// `Get 50% of each sale`
  String get fifty_percent {
    return Intl.message(
      'Get 50% of each sale',
      name: 'fifty_percent',
      desc: '',
      args: [],
    );
  }

  /// `Showcase your designs on the home page`
  String get view_on_home {
    return Intl.message(
      'Showcase your designs on the home page',
      name: 'view_on_home',
      desc: '',
      args: [],
    );
  }

  /// `Free Shipping`
  String get free_shipping {
    return Intl.message(
      'Free Shipping',
      name: 'free_shipping',
      desc: '',
      args: [],
    );
  }

  /// `Get 30 designs`
  String get thirty_design {
    return Intl.message(
      'Get 30 designs',
      name: 'thirty_design',
      desc: '',
      args: [],
    );
  }

  /// `Subscription 899 SAR`
  String get yearly_sub_price {
    return Intl.message(
      'Subscription 899 SAR',
      name: 'yearly_sub_price',
      desc: '',
      args: [],
    );
  }

  /// `Diamond Package`
  String get diamond_pack {
    return Intl.message(
      'Diamond Package',
      name: 'diamond_pack',
      desc: '',
      args: [],
    );
  }

  /// `Monthly Subscription`
  String get monthly_sub {
    return Intl.message(
      'Monthly Subscription',
      name: 'monthly_sub',
      desc: '',
      args: [],
    );
  }

  /// `Get 10 designs`
  String get ten_desings {
    return Intl.message(
      'Get 10 designs',
      name: 'ten_desings',
      desc: '',
      args: [],
    );
  }

  /// `Subscription 99 SAR`
  String get monthly_sub_price {
    return Intl.message(
      'Subscription 99 SAR',
      name: 'monthly_sub_price',
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

  /// `User name can't be empty`
  String get user_name_required {
    return Intl.message(
      'User name can\'t be empty',
      name: 'user_name_required',
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

  /// `OTP sent to`
  String get otp_sent {
    return Intl.message(
      'OTP sent to',
      name: 'otp_sent',
      desc: '',
      args: [],
    );
  }

  /// `Email is wrong, check email & try again`
  String get email_wrong {
    return Intl.message(
      'Email is wrong, check email & try again',
      name: 'email_wrong',
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

  /// `Email is already in use`
  String get email_used {
    return Intl.message(
      'Email is already in use',
      name: 'email_used',
      desc: '',
      args: [],
    );
  }

  /// `Building N0.`
  String get building_no {
    return Intl.message(
      'Building N0.',
      name: 'building_no',
      desc: '',
      args: [],
    );
  }

  /// `Flat N0.`
  String get flat_no {
    return Intl.message(
      'Flat N0.',
      name: 'flat_no',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
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

  /// `This field is required`
  String get field_required {
    return Intl.message(
      'This field is required',
      name: 'field_required',
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

  /// `Error Occurred!`
  String get error_occurred {
    return Intl.message(
      'Error Occurred!',
      name: 'error_occurred',
      desc: '',
      args: [],
    );
  }

  /// `Add Product`
  String get add_product {
    return Intl.message(
      'Add Product',
      name: 'add_product',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get product_name {
    return Intl.message(
      'Product Name',
      name: 'product_name',
      desc: '',
      args: [],
    );
  }

  /// `Arabic Product Name`
  String get product_name_ar {
    return Intl.message(
      'Arabic Product Name',
      name: 'product_name_ar',
      desc: '',
      args: [],
    );
  }

  /// `Product must have a name`
  String get product_name_required {
    return Intl.message(
      'Product must have a name',
      name: 'product_name_required',
      desc: '',
      args: [],
    );
  }

  /// `Product name must be 5 chars at least`
  String get product_name_short {
    return Intl.message(
      'Product name must be 5 chars at least',
      name: 'product_name_short',
      desc: '',
      args: [],
    );
  }

  /// `Product Description`
  String get product_des {
    return Intl.message(
      'Product Description',
      name: 'product_des',
      desc: '',
      args: [],
    );
  }

  /// `Arabic Product Description`
  String get product_des_ar {
    return Intl.message(
      'Arabic Product Description',
      name: 'product_des_ar',
      desc: '',
      args: [],
    );
  }

  /// `Product must have a description`
  String get product_des_required {
    return Intl.message(
      'Product must have a description',
      name: 'product_des_required',
      desc: '',
      args: [],
    );
  }

  /// `Product description must be 10 words at least`
  String get product_des_short {
    return Intl.message(
      'Product description must be 10 words at least',
      name: 'product_des_short',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get product_price {
    return Intl.message(
      'Price',
      name: 'product_price',
      desc: '',
      args: [],
    );
  }

  /// `Discount Percentage`
  String get discount_percentage {
    return Intl.message(
      'Discount Percentage',
      name: 'discount_percentage',
      desc: '',
      args: [],
    );
  }

  /// `Product Category`
  String get product_category {
    return Intl.message(
      'Product Category',
      name: 'product_category',
      desc: '',
      args: [],
    );
  }

  /// `Upload Your Product Image`
  String get upload_product_img {
    return Intl.message(
      'Upload Your Product Image',
      name: 'upload_product_img',
      desc: '',
      args: [],
    );
  }

  /// `Product must have a price`
  String get product_price_required {
    return Intl.message(
      'Product must have a price',
      name: 'product_price_required',
      desc: '',
      args: [],
    );
  }

  /// `Product must have a discount percentage`
  String get product_discount_required {
    return Intl.message(
      'Product must have a discount percentage',
      name: 'product_discount_required',
      desc: '',
      args: [],
    );
  }

  /// `Product quantity must be 10 at least`
  String get product_qty_required {
    return Intl.message(
      'Product quantity must be 10 at least',
      name: 'product_qty_required',
      desc: '',
      args: [],
    );
  }

  /// `Product added successfully`
  String get product_added_success {
    return Intl.message(
      'Product added successfully',
      name: 'product_added_success',
      desc: '',
      args: [],
    );
  }

  /// `Add Product`
  String get add_product_btn {
    return Intl.message(
      'Add Product',
      name: 'add_product_btn',
      desc: '',
      args: [],
    );
  }

  /// `You must choose 1 color at least`
  String get product_color_required {
    return Intl.message(
      'You must choose 1 color at least',
      name: 'product_color_required',
      desc: '',
      args: [],
    );
  }

  /// `You must choose 1 size at least`
  String get product_size_required {
    return Intl.message(
      'You must choose 1 size at least',
      name: 'product_size_required',
      desc: '',
      args: [],
    );
  }

  /// `You must choose 1 image at least`
  String get product_image_required {
    return Intl.message(
      'You must choose 1 image at least',
      name: 'product_image_required',
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

  /// `Your message sent successfully`
  String get msg_sent {
    return Intl.message(
      'Your message sent successfully',
      name: 'msg_sent',
      desc: '',
      args: [],
    );
  }

  /// `Account deleted successfully`
  String get deleted_success {
    return Intl.message(
      'Account deleted successfully',
      name: 'deleted_success',
      desc: '',
      args: [],
    );
  }

  /// `Update Account`
  String get update_account {
    return Intl.message(
      'Update Account',
      name: 'update_account',
      desc: '',
      args: [],
    );
  }

  /// `User Balance`
  String get user_balance {
    return Intl.message(
      'User Balance',
      name: 'user_balance',
      desc: '',
      args: [],
    );
  }

  /// `You have no `
  String get youHaveNo {
    return Intl.message(
      'You have no ',
      name: 'youHaveNo',
      desc: '',
      args: [],
    );
  }

  /// ` orders`
  String get orders {
    return Intl.message(
      ' orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `You have no products yet`
  String get no_products_yet {
    return Intl.message(
      'You have no products yet',
      name: 'no_products_yet',
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

  /// `Your cart is empty.`
  String get yourCartIsEmpty {
    return Intl.message(
      'Your cart is empty.',
      name: 'yourCartIsEmpty',
      desc: '',
      args: [],
    );
  }

  /// `OTP is correct`
  String get otpIsCorrect {
    return Intl.message(
      'OTP is correct',
      name: 'otpIsCorrect',
      desc: '',
      args: [],
    );
  }

  /// `Failed to check OTP`
  String get failedToCheckOtp {
    return Intl.message(
      'Failed to check OTP',
      name: 'failedToCheckOtp',
      desc: '',
      args: [],
    );
  }

  /// `The order was delivered successfully!`
  String get track4 {
    return Intl.message(
      'The order was delivered successfully!',
      name: 'track4',
      desc: '',
      args: [],
    );
  }

  /// `Your order is ready to arrive`
  String get track2 {
    return Intl.message(
      'Your order is ready to arrive',
      name: 'track2',
      desc: '',
      args: [],
    );
  }

  /// `Receipt request accepted`
  String get track1 {
    return Intl.message(
      'Receipt request accepted',
      name: 'track1',
      desc: '',
      args: [],
    );
  }

  /// `Tax`
  String get tax {
    return Intl.message(
      'Tax',
      name: 'tax',
      desc: '',
      args: [],
    );
  }

  /// `You have no favorites yet`
  String get youHaveNoFavoritesYet {
    return Intl.message(
      'You have no favorites yet',
      name: 'youHaveNoFavoritesYet',
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
