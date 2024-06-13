import 'package:e_commerce_app/utility/theme/custome_themes/appbar_theme.dart';
import 'package:e_commerce_app/utility/theme/custome_themes/bottom_sheet_theme.dart';
import 'package:e_commerce_app/utility/theme/custome_themes/chackbox_theme.dart';
import 'package:e_commerce_app/utility/theme/custome_themes/cheap_theme.dart';
import 'package:e_commerce_app/utility/theme/custome_themes/elevated_button_theme.dart';
import 'package:e_commerce_app/utility/theme/custome_themes/outlinedbutton_theme.dart';
import 'package:e_commerce_app/utility/theme/custome_themes/text_theme.dart';
import 'package:e_commerce_app/utility/theme/custome_themes/textfiled_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  /// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TAppBarTheme.lightAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButton.LightElevatedButton,
    outlinedButtonTheme: ToutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TAppBarTheme.darkAppBarTheme,
    checkboxTheme: TCheckboxTheme.DarkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButton.DarkElevatedButton,
    outlinedButtonTheme: ToutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.DarkInputDecorationTheme,
  );
}
