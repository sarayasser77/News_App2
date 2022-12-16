import 'package:flutter/material.dart';
class ThemeProvider extends ChangeNotifier{

  ThemeMode themeMode=ThemeMode.light;
  bool get isDarkMode=>themeMode==ThemeMode.dark;
  void currentTheme(bool ison){
    themeMode=ison?ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
}
class MyThemes{
  static final darkTheme=ThemeData(
    scaffoldBackgroundColor: Colors.grey.shade900,
    colorScheme: ColorScheme.dark(),
    textTheme: TextTheme(
      displayLarge: TextStyle(
          color: Colors.black,fontSize: 20
      )
  ),
  );
  static final lightTheme=ThemeData(
    scaffoldBackgroundColor: Colors.white,
    colorScheme: ColorScheme.light(),
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: Colors.white,
        fontSize: 20
      )
    ),

  );
}