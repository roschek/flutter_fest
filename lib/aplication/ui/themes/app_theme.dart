import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.black,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Colors.black,
      selectedItemColor: Color(0xFF00BF13),
      unselectedItemColor: Color(0xFF52525E)
    )
  );
}