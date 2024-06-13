import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static final TextTheme lightTextTheme = TextTheme(
    displayLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    displaySmall: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineMedium: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    headlineSmall: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    bodyLarge: const TextStyle(
      fontSize: 14.8,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    bodySmall: TextStyle(
      fontSize: 14.8,
      fontWeight: FontWeight.w500,
      color: Colors.black.withOpacity(0.5),
    ),
    titleMedium: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 12.8,
      fontWeight: FontWeight.normal,
      color: Colors.black.withOpacity(0.65),
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(
    displayLarge: const TextStyle(
      fontSize: 32.0,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
    displayMedium: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    displaySmall: const TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineMedium: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
    headlineSmall: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    titleLarge: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    bodyLarge: const TextStyle(
      fontSize: 14.8,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    bodyMedium: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 14.8,
      fontWeight: FontWeight.w500,
      color: Colors.white.withOpacity(0.5),
    ),
    titleMedium: const TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
    titleSmall: TextStyle(
      fontSize: 12.8,
      fontWeight: FontWeight.normal,
      color: Colors.white.withOpacity(0.65),
    ),
  );
}
