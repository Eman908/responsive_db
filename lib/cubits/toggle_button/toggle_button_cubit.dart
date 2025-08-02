import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/cubits/toggle_button/toggle_button_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ToggleButtonCubit extends Cubit<ToggleButtonState> {
  ToggleButtonCubit() : super(ToggleButtonInitial());

  final List<bool> selectionsLang = [true, false];
  final List<bool> selectionsTheme = [true, false];
  Locale currentLocale = const Locale('en');

  void selectLanguage(int index) {
    for (int i = 0; i < selectionsLang.length; i++) {
      selectionsLang[i] = i == index;
    }
    currentLocale = index == 0 ? const Locale('en') : const Locale('ar');

    emit(ToggleButtonLang(locale: currentLocale));
  }

  void selectTheme(BuildContext context, int index) {
    for (int i = 0; i < selectionsTheme.length; i++) {
      selectionsTheme[i] = i == index;
      if (index == 0) {
        AdaptiveTheme.of(context).setLight();
      } else {
        AdaptiveTheme.of(context).setDark();
      }
    }
    emit(ToggleButtonTheme());
  }
}
