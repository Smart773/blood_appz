import 'package:blood_app/res/colors/AppColors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //Private Constructor
  AppTheme._();
  static ThemeData appTheme = ThemeData(
    appBarTheme:  AppBarTheme(
      color: Colors.grey[200],
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.primaryColor),
    ),
    scaffoldBackgroundColor: Colors.grey[200],
    iconTheme: const IconThemeData(color: AppColors.primaryColor),
    primarySwatch: AppColors.themeColor,
    // textTheme: TextThemes.lightTextTheme,

    // text color primary
    // textbutton on click color white

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryColor,
      ),
    ),
    // text color white
    // backgroundColor: theme color,rounded corner
    //
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        foregroundColor: Colors.white,
        backgroundColor: AppColors.primaryColor,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        foregroundColor: AppColors.primaryColor,
        side: const BorderSide(color: AppColors.primaryColor),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      fillColor: AppColors.lightgray3,
      filled: true,
      iconColor: AppColors.primaryColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      prefixStyle: const TextStyle(color: AppColors.primaryColor),
      hintStyle: TextStyle(color: AppColors.primaryColor.withOpacity(0.5)),
      labelStyle: const TextStyle(color: AppColors.primaryColor),
      // border: OutlineInputBorder(

      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
        borderSide: BorderSide.none,
      ),
    ),
  );
}
