import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../main.dart';
import '../utils/colors.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: appStore.primaryColors,
    colorScheme: ColorScheme.fromSeed(seedColor: appStore.primaryColors, error: Colors.red),
    hoverColor: Colors.grey,
    fontFamily: GoogleFonts.poppins().fontFamily,
    appBarTheme: AppBarTheme(
      color: appStore.primaryColors,
     // brightness: appStore.primaryColors.isDark() ? Brightness.dark : Brightness.light,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    cardTheme: CardThemeData(color: Colors.white),
    textTheme: TextTheme(
      titleMedium: TextStyle(color: textColorSecondary),
      titleSmall: TextStyle(color: textColorPrimary),
    ),
  ).copyWith(
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Color(0xFF131d25),
    colorScheme: ColorScheme.fromSeed(seedColor: appStore.primaryColors, error: Color(0xFFCF6676), brightness: Brightness.dark),
    appBarTheme: AppBarTheme(
      color: appStore.primaryColors,
      //brightness: appStore.primaryColors.isDark() ? Brightness.dark : Brightness.light,
    ),
    primaryColor: appStore.primaryColors,
    fontFamily: GoogleFonts.poppins().fontFamily,
    cardTheme: CardThemeData(color: Color(0xFF1D2939)),
    iconTheme: IconThemeData(color: Colors.white70),
    textTheme: TextTheme(
      titleMedium: TextStyle(color: Colors.white70),
      titleSmall: TextStyle(color: Colors.white30),
    ),
  ).copyWith(
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
