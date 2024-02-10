// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'app_constants.dart';

enum LanguageType {
  ENGLISH,
  ARABIC,
}

const Locale ARABIC_LOCAL = Locale("ar");
const Locale ENGLISH_LOCAL = Locale("en");

extension LanguageTypeExtension on LanguageType {
  String getValue() {
    switch (this) {
      case LanguageType.ENGLISH:
        return AppConstants.english;
      case LanguageType.ARABIC:
        return AppConstants.arabic;
    }
  }
}