import 'package:ai_tactical_assistant/core/constants/theme/app_material_theme.dart';
import 'package:ai_tactical_assistant/core/widgets/handle_error_screen.dart';
import 'package:ai_tactical_assistant/splash_screen.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit();
    return 
    // MultiBlocProvider(
    //   providers: [
        // ...authBlocs(),
        // BlocProvider(create: (context) => InternetConnectionCubit()),
        // BlocProvider<NavBarCubit>(
        //   create: (BuildContext context) => sl<NavBarCubit>(),
        // ),
        // BlocProvider<StartWorkCubit>(
        //   create: (BuildContext context) => sl<StartWorkCubit>(),
        // ),
        // BlocProvider<EndWorkCubit>(
        //   create: (BuildContext context) => sl<EndWorkCubit>(),
        // ),
        // BlocProvider<EmployeeWorkModeCubit>(
        //   create: (BuildContext context) =>
        //       sl<EmployeeWorkModeCubit>()..getWorkModeEvent(),
        // ),
        // BlocProvider<CheckLocationCubit>(
        //   create: (BuildContext context) => sl<CheckLocationCubit>(),
        // ),
        // BlocProvider<TryToCheatCubit>(
        //   create: (BuildContext context) => sl<TryToCheatCubit>(),
        // ),
        // BlocProvider<WorkTeamCubit>(
        //   create: (BuildContext context) => sl<WorkTeamCubit>(),
        // ),
      // ],
      // child:
          // BlocConsumer<InternetConnectionCubit, InternetConnectionState>(
          //   listener: (context, state) {
          //     if (state is InternetGainedState) {
          //       Future.delayed(Duration(seconds: 3), () {
          //         if (appNavigator.canPop()) {
          //           appNavigator.pop();
          //         }
          //       });
          //     }
          //     if (state is InternetLostState) {
          //       Future.delayed(Duration(), () {
          //         appNavigator.showDialog(child: NoInternetDialog());
          //       });
          //     }
          //   },
          //   builder: (context, state) {
          //     return
          ScreenUtilInit(
        designSize: const Size(430, 971),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (BuildContext context, Widget? child) {
          return MaterialApp(
            navigatorObservers: [BotToastNavigatorObserver()],
            debugShowCheckedModeBanner: false,
            theme: AppMaterialTheme.lightTheme,
            onGenerateTitle: (context) => tr('app_name'),
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: [...context.localizationDelegates],
            // navigatorKey: sl<AppNavigator>().navigatorKey,
            home: SplashScreen(),
            builder: (context, child) {
              handleErrorScreen(context);
              child = botToastBuilder(context, child!);
              return child;
            },
          );
        },
        // );
        // },
      // ),
    );
  }
}
