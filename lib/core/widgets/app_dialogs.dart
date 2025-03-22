import 'dart:ui';
import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/size_configuration.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:ai_tactical_assistant/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class AppDialogs {
  static Future<void> showAppSheet(BuildContext context, Widget child,
      {Color? color, bool? isDissmissible}) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: color,
      showDragHandle: true,
      isScrollControlled: true,
      isDismissible: isDissmissible ?? true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(12.r),
        ),
      ),
      builder: (BuildContext context) => Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: child,
      ),
    );
  }

  static void showAppDialog(
    BuildContext context,
    Widget child, {
    bool isDismissible = true,
    bool showCloseButton = true,
  }) {
    showDialog(
      context: context,
      barrierDismissible: isDismissible,
      builder: (
        BuildContext context,
      ) =>
          BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Center(
          child: Padding(
            padding: SizeConfig.paddingSymmetric,
            child: Material(
              type: MaterialType.transparency,
              child: Center(
                child: SafeArea(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColors.white,
                          borderRadius: BorderRadius.circular(30.r),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.w,
                          vertical: 20.h,
                        ),
                        child: child,
                      ),
                      if (showCloseButton) ...[
                        const AppSpacer(heightRatio: 0.5),
                        GestureDetector(
                          onTap: () => appNavigator.pop(),
                          child: SvgPicture.asset(
                            AppAssets.dialogExit,
                            width: 26.sp,
                            height: 26.sp,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static void showAppGiftDialog(BuildContext context, Widget child,
      {bool? isDissmissible}) {
    showAdaptiveDialog(
      context: context,
      barrierDismissible: isDissmissible,
      builder: (
        BuildContext context,
      ) =>
          BackdropFilter(
        filter:
            ImageFilter.blur(sigmaX: 15, sigmaY: 15, tileMode: TileMode.decal),
        child: Material(
          type: MaterialType.transparency,
          child: Center(
            child: child,
          ),
        ),
      ),
    );
  }
}
