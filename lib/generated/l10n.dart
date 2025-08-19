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

  /// `Lastest Transactions`
  String get Lastest_Transactions {
    return Intl.message(
      'Lastest Transactions',
      name: 'Lastest_Transactions',
      desc: '',
      args: [],
    );
  }

  /// `Madrani Andi`
  String get Madrani_Andi {
    return Intl.message(
      'Madrani Andi',
      name: 'Madrani_Andi',
      desc: '',
      args: [],
    );
  }

  /// `Josua Nunito`
  String get Josua_Nunito {
    return Intl.message(
      'Josua Nunito',
      name: 'Josua_Nunito',
      desc: '',
      args: [],
    );
  }

  /// `Type customer name`
  String get Type_customer_name {
    return Intl.message(
      'Type customer name',
      name: 'Type_customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Type customer email`
  String get Type_customer_email {
    return Intl.message(
      'Type customer email',
      name: 'Type_customer_email',
      desc: '',
      args: [],
    );
  }

  /// `Customer name`
  String get Customer_name {
    return Intl.message(
      'Customer name',
      name: 'Customer_name',
      desc: '',
      args: [],
    );
  }

  /// `Customer email`
  String get Customer_email {
    return Intl.message(
      'Customer email',
      name: 'Customer_email',
      desc: '',
      args: [],
    );
  }

  /// `Item name`
  String get Item_name {
    return Intl.message('Item name', name: 'Item_name', desc: '', args: []);
  }

  /// `Item mount`
  String get Item_mount {
    return Intl.message('Item mount', name: 'Item_mount', desc: '', args: []);
  }

  /// `Send money`
  String get send_money {
    return Intl.message('Send money', name: 'send_money', desc: '', args: []);
  }

  /// `Add more details`
  String get Add_details {
    return Intl.message(
      'Add more details',
      name: 'Add_details',
      desc: '',
      args: [],
    );
  }

  /// `Name card`
  String get Name_card {
    return Intl.message('Name card', name: 'Name_card', desc: '', args: []);
  }

  /// `My Card`
  String get MyCard {
    return Intl.message('My Card', name: 'MyCard', desc: '', args: []);
  }

  /// `Transaction History`
  String get Transaction_History {
    return Intl.message(
      'Transaction History',
      name: 'Transaction_History',
      desc: '',
      args: [],
    );
  }

  /// `See all`
  String get see_all {
    return Intl.message('See all', name: 'see_all', desc: '', args: []);
  }

  /// `Cash Withdrawal`
  String get Cash_Withdrawal {
    return Intl.message(
      'Cash Withdrawal',
      name: 'Cash_Withdrawal',
      desc: '',
      args: [],
    );
  }

  /// `Landing Page project`
  String get LandingPageproject {
    return Intl.message(
      'Landing Page project',
      name: 'LandingPageproject',
      desc: '',
      args: [],
    );
  }

  /// `Juni Mobile App project`
  String get JuniMobileAppproject {
    return Intl.message(
      'Juni Mobile App project',
      name: 'JuniMobileAppproject',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the '13Apr' key

  /// `Design service`
  String get Design_service {
    return Intl.message(
      'Design service',
      name: 'Design_service',
      desc: '',
      args: [],
    );
  }

  /// `Design product`
  String get Design_product {
    return Intl.message(
      'Design product',
      name: 'Design_product',
      desc: '',
      args: [],
    );
  }

  /// `Product royalti`
  String get Product_royalti {
    return Intl.message(
      'Product royalti',
      name: 'Product_royalti',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get Others {
    return Intl.message('Others', name: 'Others', desc: '', args: []);
  }

  /// `See details`
  String get seedetails {
    return Intl.message('See details', name: 'seedetails', desc: '', args: []);
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
