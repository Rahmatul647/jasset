import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:jasset/core/locator.dart';
import 'package:jasset/core/router.dart';

import 'src/app.dart';
import 'src/settings/settings_controller.dart';
import 'src/settings/settings_service.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  await setUpDependencies();

  final initialRoute = await AppRouter().initialRoute;

  final settingsController = SettingsController(SettingsService());

  await settingsController.loadSettings();
  log("initial $initialRoute");
  runApp(MyApp(
    settingsController: settingsController,
    initialRoute: initialRoute,
  ));
}
