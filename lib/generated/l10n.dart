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
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
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
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `hello eman`
  String get hello {
    return Intl.message('hello eman', name: 'hello', desc: '', args: []);
  }

  /// `Eman Tharwat`
  String get name {
    return Intl.message('Eman Tharwat', name: 'name', desc: '', args: []);
  }

  /// `emantharwat102@gmail.com`
  String get email {
    return Intl.message(
      'emantharwat102@gmail.com',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get Dashboard {
    return Intl.message('Dashboard', name: 'Dashboard', desc: '', args: []);
  }

  /// `My Transaction`
  String get My_Transaction {
    return Intl.message(
      'My Transaction',
      name: 'My_Transaction',
      desc: '',
      args: [],
    );
  }

  /// `Statistics`
  String get Statistics {
    return Intl.message('Statistics', name: 'Statistics', desc: '', args: []);
  }

  /// `Wallet Account`
  String get Wallet_Account {
    return Intl.message(
      'Wallet Account',
      name: 'Wallet_Account',
      desc: '',
      args: [],
    );
  }

  /// `My Investments`
  String get My_Investments {
    return Intl.message(
      'My Investments',
      name: 'My_Investments',
      desc: '',
      args: [],
    );
  }

  /// `Setting system`
  String get Setting_system {
    return Intl.message(
      'Setting system',
      name: 'Setting_system',
      desc: '',
      args: [],
    );
  }

  /// `Logout account`
  String get Logout_account {
    return Intl.message(
      'Logout account',
      name: 'Logout_account',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get Light {
    return Intl.message('Light', name: 'Light', desc: '', args: []);
  }

  /// `Dark`
  String get Dark {
    return Intl.message('Dark', name: 'Dark', desc: '', args: []);
  }

  /// `All Expenses`
  String get All_Expenses {
    return Intl.message(
      'All Expenses',
      name: 'All_Expenses',
      desc: '',
      args: [],
    );
  }

  /// `Monthly`
  String get Monthly {
    return Intl.message('Monthly', name: 'Monthly', desc: '', args: []);
  }

  /// `Income`
  String get Income {
    return Intl.message('Income', name: 'Income', desc: '', args: []);
  }

  /// `April 2022`
  String get April_2022 {
    return Intl.message('April 2022', name: 'April_2022', desc: '', args: []);
  }

  /// `Balance`
  String get Balance {
    return Intl.message('Balance', name: 'Balance', desc: '', args: []);
  }

  /// `Expense`
  String get Expense {
    return Intl.message('Expense', name: 'Expense', desc: '', args: []);
  }

  /// `Quick Invoice`
  String get Quick_invoice {
    return Intl.message(
      'Quick Invoice',
      name: 'Quick_invoice',
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
