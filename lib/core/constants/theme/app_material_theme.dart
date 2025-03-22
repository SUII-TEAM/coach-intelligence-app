import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_fonts.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMaterialTheme {
  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: AppColors.scaffoldBackgroundColor,
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(16.r),
        bottomRight: Radius.circular(16.r),
      ),
    ),
    titleTextStyle: TextStyles.bold14.copyWith(fontFamily: AppFonts.cairo),
    centerTitle: true,
  );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    disabledBorder: InputBorder.none,
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: BorderSide(color: AppColors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: BorderSide(color: AppColors.red),
    ),
    filled: true,
    fillColor: AppColors.white,
    focusColor: AppColors.black,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
    floatingLabelStyle: TextStyles.regular14.copyWith(color: AppColors.primary),
    labelStyle: TextStyles.regular14,
    errorStyle: TextStyles.regular12.copyWith(color: AppColors.red),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide: BorderSide(color: AppColors.primary, width: 1.sp),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(16.r),
      borderSide:
          BorderSide(color: AppColors.scaffoldBackgroundColor, width: 1.sp),
    ),
  );

  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      textStyle: TextStyles.regular16
          .copyWith(color: AppColors.white, fontFamily: AppFonts.cairo),
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      padding: const EdgeInsets.symmetric(vertical: 12),
      minimumSize: Size(double.infinity, 56.h),
    ),
  );

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: false,
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) {
        return Icon(
          Icons.arrow_back_ios_new_rounded,
          color: AppColors.primary,
          size: 24.sp,
        );
      },
    ),
    fontFamily: AppFonts.cairo,
    scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
    textTheme: TextTheme(titleMedium: TextStyles.medium14),
    appBarTheme: appBarTheme,
    inputDecorationTheme: inputDecorationTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    indicatorColor: AppColors.primary,
    datePickerTheme: DatePickerThemeData(
      headerBackgroundColor: AppColors.primary,
      backgroundColor: AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
      dayStyle: TextStyles.regular14.copyWith(fontFamily: AppFonts.cairo),
      cancelButtonStyle: TextButton.styleFrom(
        backgroundColor: AppColors.white,
        textStyle: TextStyles.bold14
            .copyWith(color: AppColors.primary, fontFamily: AppFonts.cairo),
      ),
      confirmButtonStyle: TextButton.styleFrom(
        backgroundColor: AppColors.white,
        textStyle: TextStyles.bold14
            .copyWith(color: AppColors.primary, fontFamily: AppFonts.cairo),
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: AppFonts.cairo,
    scaffoldBackgroundColor: AppColors.black,
    textTheme: TextTheme(titleMedium: TextStyles.medium14),
    appBarTheme: appBarTheme,
    elevatedButtonTheme: elevatedButtonTheme,
    inputDecorationTheme: inputDecorationTheme,
  );
}
