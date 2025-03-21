import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_fonts.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  DateTime? currentBackPressTime;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) async {
        DateTime now = DateTime.now();
        if (currentBackPressTime == null ||
            now.difference(currentBackPressTime!) >
                const Duration(seconds: 2)) {
          currentBackPressTime = now;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              behavior: SnackBarBehavior.floating,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(15.r))),
              backgroundColor: AppColors.grey,
              content: Text(
                tr('tap_again_to_exit'),
                style:
                    TextStyles.semiBold14.copyWith(fontFamily: AppFonts.cairo),
              ),
            ),
          );

          return;
        }
        SystemNavigator.pop();
        return;
      },
      child:
          //  BlocBuilder<AutoSignInCubit, AutoSignInState>(
          //   builder: (context, state) {
          //     if (state is AutoSignInHasUser) {
          //       return const MainScreen();
          //     }
          //     if (state is AutoSignInNoUser ||
          //         state is AutoSignInError ||
          //         state is AutoSignInSeenIntro) {
          //       return const SignInScreen();
          //     }
          //     return
          Scaffold(
        backgroundColor: AppColors.primary,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(AppAssets.appLogoWhite, width: 400.sp)
                  .animate()
                  .scaleXY(
                    begin: 0.5,
                    end: 1.0,
                    duration: 1500.ms,
                    curve: Curves.easeOutBack,
                  )
                  .fadeIn(duration: 600.ms),
            ],
          ),
        ),
      ),
      //     },
    );
    // );
  }
}
