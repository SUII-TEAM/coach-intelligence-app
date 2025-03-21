import 'package:ai_tactical_assistant/core/utils/app_bloc_observer/bloc_observer.dart';
import 'package:ai_tactical_assistant/core/utils/get_storage_helper.dart';
import 'package:ai_tactical_assistant/firebase_options.dart';
import 'package:ai_tactical_assistant/my_app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_notifications_handler/firebase_notifications_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  // await ServiceLocator.init();
  await CacheHelper.init();
  Bloc.observer = MyBlocObserver();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: const [Locale('en'), Locale('ar')],
      fallbackLocale: const Locale('ar'),
      startLocale: const Locale('ar'),
      assetLoader: const RootBundleAssetLoader(),
      child: FirebaseNotificationsHandler(
        onTap: (details) {
          // Map<String, dynamic> body = details.firebaseMessage.data;
          // log(body['msg']);
          // sl<AppNavigator>().navigatorKey.currentState?.push(MaterialPageRoute(
          //       builder: (context) => Scaffold(),
          //     ));
        },
        child: const MyApp(),
      ),
    ),
  );
}
