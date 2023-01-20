import 'package:bloc_template/config/dependencies/dependencies.dart';
import 'package:bloc_template/config/env.dart';
import 'package:bloc_template/ui/app.dart';
import 'package:flutter/material.dart';

Future<void> run(Env env) async {
  WidgetsFlutterBinding.ensureInitialized();

  /// Flavor a mobile Flutter app as described here -> https://docs.flutter.dev/deployment/flavors
  /// See more in the docs
  await DependencyRegistry.registerDependencies(env);

  runApp(const App());
}
