import 'package:flutter/material.dart';

abstract class ToggleButtonState {}

class ToggleButtonInitial extends ToggleButtonState {}

class ToggleButtonLang extends ToggleButtonState {
  final Locale locale;

  ToggleButtonLang({required this.locale});
}

class ToggleButtonTheme extends ToggleButtonState {}
