import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode _themeMode = ThemeMode.light;

  ///set Theme
  void setTheme(bool isDark){
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  ///get Light Theme
  ThemeMode get themeMode => _themeMode;

  ///get Dark Theme
  bool get isDark => _themeMode == ThemeMode.dark;
}