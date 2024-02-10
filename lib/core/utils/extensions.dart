import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'app_constants.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, predicate, arguments: arguments);
  }

  void pop() => Navigator.of(this).pop();
}

extension MediaQueryValues on BuildContext {
  double get queryWidth => MediaQuery.of(this).size.width;

  double get queryHeight => MediaQuery.of(this).size.height;

  dynamic get queryText => MediaQuery.of(this).textScaler;
}

extension ContextExtensions on BuildContext {
  // Example: Show a SnackBar
  void defaultSnackBar(String content, {Color? color}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(content),
        backgroundColor: color,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15.0,
            ),
          ),
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

extension NonNullString on String? {
  String isNullOrEmpty() {
    if (this == null) {
      return AppConstants.unknownStringValue;
    } else {
      return this!;
    }
  }
}

extension EmailValidationExtensions on String {
  // Example: Check if a string is a valid email address
  bool isEmail() {
    return AppConstants.emailRegExp.hasMatch(this);
  }
}

extension PasswordValidationExtensions on String {
  // Example: Check if a string is a valid email address
  bool isPass() {
    return AppConstants.passRegExp.hasMatch(this);
  }
}

extension PhoneValidationExtensions on String {
  // Example: Check if a string is a valid email address
  bool isPhone() {
    return AppConstants.phoneRegExp.hasMatch(this);
  }
}


extension NonNullNum on num? {
  num isNullOrEmpty() {
    if (this == null) {
      return AppConstants.unknownNumValue;
    } else {
      return this!;
    }
  }
}

extension DoubleExtensions on num {
  // Example: Round a double to a specific number of decimal places
  double roundToDecimalPlaces(int decimalPlaces) {
    double mod = 10.0 * decimalPlaces;
    return ((this * mod).round().toDouble() / mod);
  }
}

enum DateFormatType {
  shortDate,
  shortDateTime,
  hyphenatedDate,
  hyphenatedDateTime,
  dayMonthYear,
  monthDayYear,
  fullDayMonthYear,
  shortDayMonthYear,
  fullDayMonthYearLong,
  shortDayMonthYearLong,
  timeOnly,
  timeAgo,
  timeWithSeconds,
}

extension DateExtensions on DateTime {
  String stringFormat(DateFormatType formatType,
      {bool use24HoursFormat = false, bool showSeconds = false}) {
    switch (formatType) {
      case DateFormatType.shortDate:
        return DateFormat('dd/MM/yyyy').format(this);
      case DateFormatType.shortDateTime:
        return DateFormat(use24HoursFormat
                ? 'MM/dd/yyyy HH:mm${showSeconds ? ':ss' : ''}'
                : 'MM/dd/yyyy h:mm${showSeconds ? ':ss a' : ' a'}')
            .format(this);
      case DateFormatType.hyphenatedDate:
        return DateFormat('MM-dd-yyyy').format(this);
      case DateFormatType.hyphenatedDateTime:
        return DateFormat(use24HoursFormat
                ? 'MM-dd-yyyy HH:mm${showSeconds ? ':ss' : ''}'
                : 'MM-dd-yyyy h:mm${showSeconds ? ':ss a' : ' a'}')
            .format(this);
      case DateFormatType.dayMonthYear:
        return DateFormat('dd MMM yyyy').format(this);
      case DateFormatType.monthDayYear:
        return DateFormat('MM/dd/yyyy').format(this);
      case DateFormatType.fullDayMonthYear:
        return DateFormat('EEEE dd MMM yyyy').format(this);
      case DateFormatType.shortDayMonthYear:
        return DateFormat('E dd MMM yyyy').format(this);
      case DateFormatType.fullDayMonthYearLong:
        return DateFormat('EEEE dd MMMM yyyy').format(this);
      case DateFormatType.shortDayMonthYearLong:
        return DateFormat('E dd MMMM yyyy').format(this);
      case DateFormatType.timeOnly:
        return DateFormat(use24HoursFormat
                ? 'HH:mm${showSeconds ? ':ss' : ''}'
                : 'h:mm${showSeconds ? ':ss a' : ' a'}')
            .format(this);
      case DateFormatType.timeAgo:
        final now = DateTime.now();
        final difference = now.difference(this);

        if (difference.inSeconds < 60) {
          return '${difference.inSeconds} seconds ago';
        } else if (difference.inMinutes < 60) {
          return '${difference.inMinutes} minutes ago';
        } else if (difference.inHours < 24) {
          return '${difference.inHours} hours ago';
        } else if (difference.inDays == 1) {
          return '1 day ago';
        } else {
          return '${difference.inDays} days ago';
        }

      case DateFormatType.timeWithSeconds:
        return DateFormat(use24HoursFormat
                ? 'HH:mm${showSeconds ? ':ss' : ''}'
                : 'h:mm${showSeconds ? ':ss a' : ' a'}')
            .format(this);
    }
  }
}

enum TimeFormatType {
  hoursMinutes,
  hoursMinutesPeriod,
  addHours,
  addMinutes,
}

extension TimeOfDayExtensions on TimeOfDay {
  String stringFormat(
      {bool use24HoursFormat = false,
      int addedHours = 0,
      int addedMinutes = 0,
      TimeFormatType formatType = TimeFormatType.hoursMinutes}) {
    final hour = use24HoursFormat ? this.hour : hourOfPeriod;
    final minute = this.minute;

    // Add hours and minutes to the original time
    final modifiedTime =
        DateTime(2022, 1, 1, hour + addedHours, minute + addedMinutes);

    switch (formatType) {
      case TimeFormatType.hoursMinutes:
        return DateFormat(use24HoursFormat ? 'HH:mm' : 'h:mm a')
            .format(modifiedTime);
      case TimeFormatType.hoursMinutesPeriod:
        return DateFormat(use24HoursFormat ? 'HH:mm' : 'h:mm a')
            .format(modifiedTime);
      case TimeFormatType.addHours:
        return DateFormat(use24HoursFormat ? 'HH:mm' : 'h:mm a')
            .format(modifiedTime);
      case TimeFormatType.addMinutes:
        return DateFormat(use24HoursFormat ? 'HH:mm' : 'h:mm a')
            .format(modifiedTime);
    }
  }
}