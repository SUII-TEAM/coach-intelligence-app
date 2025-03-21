import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_fonts.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/constants/size_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppMaterialTheme {
  static AppBarTheme appBarTheme = AppBarTheme(
    backgroundColor: AppColors.scaffoldBackgroundColor,
    elevation: 0.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(15.r),
        bottomRight: Radius.circular(15.r),
      ),
    ),
    titleTextStyle: TextStyles.bold14.copyWith(fontFamily: AppFonts.cairo),
    centerTitle: true,
  );

  static ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      disabledBackgroundColor: AppColors.greyLight,
      disabledForegroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.white,
      textStyle: TextStyles.bold14.copyWith(fontFamily: AppFonts.cairo),
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
      padding: EdgeInsets.symmetric(
        horizontal: SizeConfig.hPadding,
        vertical: 10.sp,
      ),
    ),
  );

  static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
    hintStyle: TextStyles.regular14.copyWith(color: AppColors.greyLight),
    disabledBorder: InputBorder.none,
    floatingLabelStyle: TextStyles.regular14.copyWith(color: AppColors.primary),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: AppColors.red),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: AppColors.red),
    ),
    filled: true,
    fillColor: AppColors.white,
    floatingLabelAlignment: FloatingLabelAlignment.start,
    contentPadding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
    labelStyle: TextStyles.regular14,
    errorStyle: TextStyles.regular12.copyWith(color: AppColors.red),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: AppColors.primary, width: 1.sp),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15.r),
      borderSide: BorderSide(color: AppColors.greyLight, width: 0.1.sp),
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
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.r)),
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
