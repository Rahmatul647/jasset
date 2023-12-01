
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jasset/core/global_key_service.dart';
import 'package:jasset/src/settings/settings_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setUpDependencies() async {
  //service
  getIt.registerSingleton(GlobalKeyService());
  getIt.registerSingletonAsync<SharedPreferences>(
      () => SharedPreferences.getInstance());
  await getIt.isReady<SharedPreferences>();
  getIt.registerSingleton(SettingsService());
  getIt.registerSingleton(FlutterSecureStorage());
  getIt.registerSingleton(ImagePicker());

  //data sources

  //repositories

  //use cases

  //state
}
