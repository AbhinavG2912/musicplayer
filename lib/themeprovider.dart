import 'package:flutter/material.dart';
import 'darkmode.dart';
import 'lightmode.dart';



class ThemeProvider extends ChangeNotifier {
  // intially light
  ThemeData _themeData = lightMode;

  //get theme
  ThemeData get themeData => _themeData;

  //is dark
  bool get isDarkMode => _themeData == darkMode;

  //set themee
  set themeData(ThemeData themeData){
    _themeData = themeData;

    // uper ui
    notifyListeners();
  }

  //toggle theme
  void toggleTheme(){
    if (_themeData == lightMode){
      themeData = darkMode;

    }else{
      themeData = lightMode;
    }
  }

}