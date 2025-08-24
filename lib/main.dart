import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/run_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() async {
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => DashBoard(savedThemeMode: savedThemeMode),
    ),
  );
}
