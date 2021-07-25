import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constants/theme_constant.dart';

ThemeData theme() {
  return ThemeData(
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: kBgColor1,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    elevatedButtonTheme: elevatedButtonThemeData(),
    outlinedButtonTheme: outlinedButtonThemeData(),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kBgColor4,
      selectedItemColor: kSecondaryColor,
      unselectedItemColor: kSecondaryTextColor,
      type: BottomNavigationBarType.fixed,
    ),
    iconTheme: IconThemeData(color: kPrimaryTextColor),
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(color: kPrimaryTextColor),
    gapPadding: 4,
  );
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(30),
    borderSide: const BorderSide(color: kSubtitleColor),
  );
  return InputDecorationTheme(
    labelStyle: kPrimaryTextStyle,
    hintStyle: kSubtitleTextStyle,
    contentPadding: const EdgeInsets.symmetric(
      vertical: 20,
      horizontal: 24,
    ),
    focusedBorder: focusBorder,
    enabledBorder: outlineInputBorder,
    helperStyle: kSecondaryTextStyle,
  );
}

TextTheme textTheme() => GoogleFonts.nunitoTextTheme().copyWith(
      bodyText1: kPrimaryTextStyle,
      bodyText2: kPrimaryTextStyle,
    );

AppBarTheme appBarTheme() => AppBarTheme(
      elevation: 0,
      textTheme: GoogleFonts.nunitoTextTheme().copyWith(
        headline6: kPrimaryTextStyle.copyWith(fontSize: 18),
      ),
      iconTheme: IconThemeData(color: kPrimaryTextColor),
      brightness: Brightness.dark,
      centerTitle: true,
      color: kBgColor1,
    );

ElevatedButtonThemeData elevatedButtonThemeData() => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: kPrimaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        textStyle: kPrimaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: kMediumWeight,
        ),
      ),
    );

OutlinedButtonThemeData outlinedButtonThemeData() => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: kPrimaryTextColor,
        side: BorderSide(color: kPrimaryColor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        textStyle: kPrimaryTextStyle.copyWith(
          fontSize: 16,
          fontWeight: kMediumWeight,
        ),
      ),
    );
