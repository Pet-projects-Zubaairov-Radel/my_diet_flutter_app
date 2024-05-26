import 'package:flutter/material.dart';
import 'package:my_diet_flutter_app/resources/app_colors.dart';

abstract class AppTheme {
  static var dark = ThemeData(
      sliderTheme: SliderThemeData(
          inactiveTrackColor: AppColors.grey,
          activeTrackColor: AppColors.white,
          thumbColor: AppColors.green,
          overlayColor: AppColors.lightGrey),
      scaffoldBackgroundColor: AppColors.black,
      primarySwatch: AppColors.white,
      primaryColor: AppColors.white.shade900,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedIconTheme: IconThemeData(color: AppColors.white),
        unselectedIconTheme: IconThemeData(color: AppColors.grey),
        backgroundColor: AppColors.black,
      ),
      navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColors.black,
          overlayColor: MaterialStatePropertyAll(AppColors.black)),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColors.black,
          iconTheme: IconThemeData(
            color: AppColors.white,
          ),
          actionsIconTheme: IconThemeData(
            color: AppColors.white,
          ),
          shadowColor: AppColors.white),
      bottomAppBarTheme: BottomAppBarTheme(
          color: AppColors.black, surfaceTintColor: AppColors.black),
      textTheme: const TextTheme());
}
