import 'package:bloc_template/config/dependencies/dependencies.dart';
import 'package:bloc_template/config/env.dart';
import 'package:bloc_template/config/theme.dart';
import 'package:bloc_template/utils/routing.dart';
import 'package:collection/collection.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_translate/flutter_translate.dart';

class App extends StatelessWidget {
  Env get env => readDR<Env>();

  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// MultiBlocProvider for global-scope Blocs
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingsCubit>(create: (_) => SettingsCubit(readDR())),
      ],
      child: LocalizedApp(
        readDR(),
        BlocBuilder<SettingsCubit, SettingsCubitState>(
          builder: (context, state) {
            final localizationDelegate = LocalizedApp.of(context).delegate;

            return MaterialApp.router(
              title: env.appName,
              themeMode: state.when(
                tbd: () => ThemeMode.system,
                ready: (s) => themeModeFromSettings(s),
              ),
              theme: lightTheme,
              darkTheme: darkTheme,
              routerConfig: routerConfig,
              localizationsDelegates: [
                localizationDelegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              supportedLocales: localizationDelegate.supportedLocales,
              locale: localizationDelegate.currentLocale,
            );
          },
        ),
      ),
    );
  }

  ThemeMode themeModeFromSettings(Settings settings) {
    /// null BrightnessPreference means ThemeMode.system
    switch (BrightnessPreference.values.firstWhereOrNull((e) => e.name == settings.brightness?.name)) {
      case BrightnessPreference.light:
        return ThemeMode.light;
      case BrightnessPreference.dark:
        return ThemeMode.dark;
      default:
        return ThemeMode.system;
    }
  }
}
