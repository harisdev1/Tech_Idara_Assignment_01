// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_idara_assignment_01/utils/app_colors.dart';
import 'package:tech_idara_assignment_01/utils/app_fonts.dart';

abstract class AppTheme {
  static ThemeData dark() => ThemeData(
        // useMaterial3: true,
        scaffoldBackgroundColor: AppColors.scaffoldBackgroundColor,
        fontFamily: AppFonts.poppins,
        textTheme: TextTheme(
          headline1: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 35.sp,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w600,
          ),
          headline2: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 25.sp,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w600,
          ),
          subtitle1: TextStyle(
            height: 0,
            color: AppColors.whiteColor,
            fontSize: 30.sp,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w400,
          ),
          labelMedium: TextStyle(
            fontSize: 15.sp,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w400,
            color: AppColors.labelColor,
          ),
          button: TextStyle(
            fontSize: 15.sp,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w600,
            color: AppColors.labelColor,
          ),
          headline4: TextStyle(
            fontSize: 18.sp,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w700,
            color: AppColors.whiteColor,
          ),
          headline3: TextStyle(
            fontSize: 25.sp,
            letterSpacing: -0.5,
            fontWeight: FontWeight.w300,
            color: AppColors.whiteColor,
          ),
        ),
      );
}

// extension on BuildContext {
//   TextTheme  customTextTheme() => Theme.of(this).textTheme;
//   TextStyle get paragraph2 => customTextTheme().labelMedium!.copyWith(
//         fontWeight: FontWeight.w600,
//         color: AppColors.whiteColor,
//       );
//   TextStyle get paragraph3 => customTextTheme().labelMedium!.copyWith(
//         fontSize: 12.sp,
//       );
// }
