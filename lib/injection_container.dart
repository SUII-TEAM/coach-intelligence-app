import 'package:ai_tactical_assistant/core/utils/app_api_base_helper/app_api_base_helper.dart';
import 'package:ai_tactical_assistant/core/utils/app_navigation/app_navigator.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final GetIt sl = GetIt.instance;

abstract class ServiceLocator {
  static Future<void> init() async {
    sl.allowReassignment = true;
    // features
    // initAuthInjection();
    // initHomeInjection();
    // initNotificationsInjection();
    // initWorkModeInjection();
    // initOrdersInjection();
    // initWorkTeamInjection();
    // initEmployeeDetailsInjection();

    // core
    _injectSharedPreferences();
    _injectSecureStorage();
    _injectAppNavigator();
    // _injectDioHelper();
  }
}

void _injectSharedPreferences() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  sl.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
}

void _injectSecureStorage() async {
  AndroidOptions androidOptions = const AndroidOptions(
    encryptedSharedPreferences: true,
  );
  final FlutterSecureStorage storage = FlutterSecureStorage(
    aOptions: androidOptions,
  );
  sl.registerLazySingleton<FlutterSecureStorage>(() => storage);
}

void _injectAppNavigator() {
  sl.registerLazySingleton<AppNavigator>(() => AppNavigator());
}

// void _injectDioHelper() {
//   final Dio dio = Dio();
//   final ApiBaseHelper apiBaseHelper = ApiBaseHelper(dio: dio);
//   apiBaseHelper.dioInit();
//   sl.registerLazySingleton<ApiBaseHelper>(() => apiBaseHelper);
// }

SharedPreferences get sharedPreferences => sl<SharedPreferences>();

FlutterSecureStorage get secureStorage => sl<FlutterSecureStorage>();

ApiBaseHelper get dioHelper => sl<ApiBaseHelper>();

AppNavigator get appNavigator => sl<AppNavigator>();
