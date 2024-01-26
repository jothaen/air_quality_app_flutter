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

class I10n {
  I10n();

  static I10n? _current;

  static I10n get current {
    assert(_current != null,
        'No instance of I10n was loaded. Try to initialize the I10n delegate before accessing I10n.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<I10n> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = I10n();
      I10n._current = instance;

      return instance;
    });
  }

  static I10n of(BuildContext context) {
    final instance = I10n.maybeOf(context);
    assert(instance != null,
        'No instance of I10n present in the widget tree. Did you add I10n.delegate in localizationsDelegates?');
    return instance!;
  }

  static I10n? maybeOf(BuildContext context) {
    return Localizations.of<I10n>(context, I10n);
  }

  /// `Air Quality`
  String get airQuality {
    return Intl.message(
      'Air Quality',
      name: 'airQuality',
      desc: '',
      args: [],
    );
  }

  /// `Air Quality Index: {index}`
  String airQualityIndex(Object index) {
    return Intl.message(
      'Air Quality Index: $index',
      name: 'airQualityIndex',
      desc: '',
      args: [index],
    );
  }

  /// `Enter the place name`
  String get enterThePlaceName {
    return Intl.message(
      'Enter the place name',
      name: 'enterThePlaceName',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Welcome to the Air Quality App`
  String get welcomeToTheAirQualityApp {
    return Intl.message(
      'Welcome to the Air Quality App',
      name: 'welcomeToTheAirQualityApp',
      desc: '',
      args: [],
    );
  }

  /// `Use the search bar above to find the information about the air quality in your place!`
  String get useTheSearchBarToFindPlace {
    return Intl.message(
      'Use the search bar above to find the information about the air quality in your place!',
      name: 'useTheSearchBarToFindPlace',
      desc: '',
      args: [],
    );
  }

  /// `Something went wrong 😔`
  String get somethingWentWrong {
    return Intl.message(
      'Something went wrong 😔',
      name: 'somethingWentWrong',
      desc: '',
      args: [],
    );
  }

  /// `Probably we could not find any station for a given place name. Try again`
  String get genericErrorDescription {
    return Intl.message(
      'Probably we could not find any station for a given place name. Try again',
      name: 'genericErrorDescription',
      desc: '',
      args: [],
    );
  }

  /// `Very Good! 😍`
  String get airQualityVeryGood {
    return Intl.message(
      'Very Good! 😍',
      name: 'airQualityVeryGood',
      desc: '',
      args: [],
    );
  }

  /// `Good 😊`
  String get airQualityGood {
    return Intl.message(
      'Good 😊',
      name: 'airQualityGood',
      desc: '',
      args: [],
    );
  }

  /// `Fair 🙂`
  String get airQualityFair {
    return Intl.message(
      'Fair 🙂',
      name: 'airQualityFair',
      desc: '',
      args: [],
    );
  }

  /// `Poor 😐`
  String get airQualityPoor {
    return Intl.message(
      'Poor 😐',
      name: 'airQualityPoor',
      desc: '',
      args: [],
    );
  }

  /// `Very Poor 😠`
  String get airQualityVeryPoor {
    return Intl.message(
      'Very Poor 😠',
      name: 'airQualityVeryPoor',
      desc: '',
      args: [],
    );
  }

  /// `Hazardous 🤬`
  String get airQualityHazardous {
    return Intl.message(
      'Hazardous 🤬',
      name: 'airQualityHazardous',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<I10n> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<I10n> load(Locale locale) => I10n.load(locale);
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
