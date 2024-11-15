import 'package:flutter/material.dart';
import 'package:t_store/utils/theme/custom_theme/appbar_theme.dart';
import 'package:t_store/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:t_store/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:t_store/utils/theme/custom_theme/chip_theme.dart';
import 'package:t_store/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:t_store/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:t_store/utils/theme/custom_theme/text_field_theme.dart';
import 'package:t_store/utils/theme/custom_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._(); //constructor

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: TTextTheme.lightTextTheme,
      chipTheme: TChipTheme.lightChipTheme,
      checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
      appBarTheme: TAppBarTheme.lightAppBarTheme,
      inputDecorationTheme: TTextFormFieldTheme.lightInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme);

  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TTextTheme.darkTextTheme,
      chipTheme: TChipTheme.darkChipTheme,
      checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
      bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonTheme,
      appBarTheme: TAppBarTheme.darkAppBarTheme,
      inputDecorationTheme: TTextFormFieldTheme.darkInputDecorationTheme,
      outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme);
}
