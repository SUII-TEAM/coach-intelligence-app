import 'package:get_storage/get_storage.dart';

class CacheHelper {
  static final GetStorage _appBox = GetStorage();

  static Future<void> init() async => await GetStorage.init();

  // Wrapper to write non-encrypted data
  static Future<void> write(String key, dynamic value) async {
    await _appBox.write(key, value);
  }

  // Wrapper to read non-encrypted data
  static T? read<T>(String key, {T? defaultValue}) {
    return _appBox.read(key) ?? defaultValue;
  }

  static Future<void> cacheToken({required String token}) async {
    await write('token', token);
  }

  static String? get getUserToken => read('token');

  static Future<void> cacheLocale({required String langCode}) async {
    await write('langCode', langCode);
  }

  static String get getLocale => read<String>('langCode', defaultValue: "ar")!;

  static Future<void> cacheFirstTime({required bool isFirst}) async {
    await write('isFirst', isFirst);
  }

  static bool get getIsFirstTime => read<bool>('isFirst', defaultValue: true)!;

  static Future<void> cacheUserCredentials({
    required String phone,
    required String password,
  }) async {
    await write('phone', phone);
    await write('password', password);
  }

  static String? get getUserPhone => read('phone');
  static String? get getUserPassword => read('password');

  static Future<void> eraseCache() async => _appBox.erase();

  static Future<void> logout() async {
    Future.wait(
      {
        _appBox.remove("token"),
        _appBox.remove("phone"),
        _appBox.remove("password"),
      },
    );
  }

  static Future<void> removeToken() async {
    await _appBox.remove("token");
  }
}
