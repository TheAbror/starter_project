import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_project/core/colors/app_colors.dart';

ThemeData lightTheme() {
  return ThemeData(
    fontFamily: 'Lato',
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      background: AppColors.background,
      onBackground: AppColors.float,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 15.sp, color: AppColors.textMain),
      bodyText2: const TextStyle(color: AppColors.textMain),
      headline1: TextStyle(
        fontSize: 11.sp,
        color: AppColors.textSecondary,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    fontFamily: 'Lato',
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      background: AppColors.textMain,
      onBackground: AppColors.onBackground,
    ),
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 15.sp, color: AppColors.float),
      bodyText2: const TextStyle(color: AppColors.float),
      headline1: TextStyle(
        fontSize: 11.sp,
        color: AppColors.float,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
