// ignore_for_file: type_literal_in_constant_pattern

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/app_constants.dart';
import '../utils/language_manager.dart';

class CacheHelper {
  // MARK: - Set Data To SharedPreferences.
  static setData(String key, value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    debugPrint('CacheHelper: setData with key: $key & value: $value');
    switch (value.runtimeType) {
      case String:
        prefs.setString(key, value);
        break;
      case int:
        prefs.setInt(key, value);
        break;
      case double:
        prefs.setDouble(key, value);
        break;
      case bool:
        prefs.setBool(key, value);
        break;
      case List:
        prefs.setStringList(key, value);
        break;
      default:
        debugPrint('CacheHelper: There\'s No Type Matched!');
        return null;
    }
  }

  // MARK: - Get Data From SharedPreferences.
  static getData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var value = prefs.get(key);
    debugPrint('CacheHelper: getData with key: $key & value: $value');
    return prefs.get(key);
  }

  // MARK: - Clear Data From All SharedPreferences.
  static clearData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    debugPrint('CacheHelper: clearData');
    return prefs.clear();
  }

  // MARK: - Remove Data With Specific Key From SharedPreferences
  static removeData(String key) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    debugPrint('CacheHelper: removeData with key: $key');
    return prefs.remove(key);
  }

  // MARK: - Get The Language Of The Application
  static Future<String> getAppLang() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? language = prefs.getString(AppConstants.prefsLangKey);
    if (language != null && language.isNotEmpty) {
      return language;
    } else {
      return LanguageType.ENGLISH.getValue();
    }
  }

  // MARK: - Change Language Of The Application
  static Future<void> changeAppLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String currentLang = await getAppLang();

    if (currentLang == LanguageType.ARABIC.getValue()) {
      // set english
      prefs.setString(
          AppConstants.prefsLangKey, LanguageType.ENGLISH.getValue());
    } else {
      // set arabic
      prefs.setString(
          AppConstants.prefsLangKey, LanguageType.ARABIC.getValue());
    }
  }
  static Future<void> setAppLanguage(String? language) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (language != LanguageType.ARABIC.getValue()) {
      prefs.setString(
          AppConstants.prefsLangKey, LanguageType.ENGLISH.getValue());
      debugPrint(AppConstants.prefsLangKey);
    } else {
      prefs.setString(
          AppConstants.prefsLangKey, LanguageType.ARABIC.getValue());
      debugPrint(AppConstants.prefsLangKey);
    }

  }

  static Future<Locale> getLocal() async {
    String currentLang = await getAppLang();
    if (currentLang == LanguageType.ARABIC.getValue()) {
      debugPrint(currentLang);
      return ARABIC_LOCAL;
    } else {
      debugPrint(currentLang);
      return ENGLISH_LOCAL;
    }
  }

  static bool isEnglish(){
    if(Intl.getCurrentLocale()=='en'){
      return true;
    }else{
      return false;
    }
  }
}
