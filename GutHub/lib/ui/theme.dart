import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

ThemeData buildTheme() {
  // We're going to define all of our font styles
  // in this method:
  TextTheme _buildTextTheme(TextTheme base) {
    return base.copyWith(//used quick fix ? for all copywith
      headline2: base.headline2?.copyWith(
        //fontStyle: GoogleFonts.merriweather,
        fontSize: 40.0,
        color: const Color(0xFF807A6B),
      ),
      // Used for the recipes' title:
      headline4: base.headline4?.copyWith(
        //fontStyle: GoogleFonts.merriweather,
        fontSize: 15.0,
        color: const Color(0xFF807A6B),
      ),
      bodyText1: base.bodyText1?.copyWith(color: const Color(0xFF807A6B))
    );
  }

  // We want to override a default light blue theme.
  final ThemeData base = ThemeData.light();

  // And apply changes on it:
  return base.copyWith(
    textTheme: _buildTextTheme(base.textTheme),
    primaryColor: const Color(0xFFFFF8E1),
    indicatorColor: const Color(0xFF807A6B),
    scaffoldBackgroundColor: const Color(0xFFF5F5F5),
    accentColor: const Color(0xFFFFF8E1),
    iconTheme: IconThemeData(
      color: const Color(0xFFCCC5AF),
      size: 20.0,
    ),
    buttonColor: Colors.white,
    backgroundColor: Colors.white,
    tabBarTheme: base.tabBarTheme.copyWith(
      labelColor: const Color(0xFF807A6B),
      unselectedLabelColor: const Color(0xFFCCC5AF),
      
    )
  );
}