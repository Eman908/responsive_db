import 'dart:ui';

import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:admin_db/core/utils/theme.dart';
import 'package:admin_db/cubits/active_button/active_button_cubit.dart';
import 'package:admin_db/cubits/toggle_button/toggle_button_cubit.dart';
import 'package:admin_db/cubits/toggle_button/toggle_button_state.dart';
import 'package:admin_db/generated/l10n.dart';
import 'package:admin_db/views/dashboard_view.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key, this.savedThemeMode});
  final AdaptiveThemeMode? savedThemeMode;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => ActiveButtonCubit()),
        BlocProvider(create: (context) => ToggleButtonCubit()),
      ],
      child: AdaptiveTheme(
        light: lightTheme,
        dark: darkTheme,
        initial: savedThemeMode ?? AdaptiveThemeMode.light,
        builder: (theme, darkTheme) {
          return BlocBuilder<ToggleButtonCubit, ToggleButtonState>(
            builder: (context, state) {
              final locale =
                  state is ToggleButtonLang ? state.locale : const Locale('en');
              return MaterialApp(
                builder: DevicePreview.appBuilder,
                locale: locale,
                supportedLocales: S.delegate.supportedLocales,
                localizationsDelegates: const [
                  S.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                theme: theme,
                darkTheme: darkTheme,
                debugShowCheckedModeBanner: false,
                scrollBehavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                  },
                ),
                home: const DashBoardView(),
              );
            },
          );
        },
      ),
    );
  }
}
