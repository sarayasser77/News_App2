
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatenews/providers/ThemeProvider.dart';
import 'package:updatenews/providers/newsprovider.dart';
import 'package:updatenews/providers/searchprovider.dart';
import 'package:updatenews/splashscreen/splash.dart';
void main() {
    runApp( MultiProvider(providers: [
      ChangeNotifierProvider(create: (ctx)=>SearchProvider()),
      ChangeNotifierProvider(create: (ctx)=>Newsprovider()),
      ChangeNotifierProvider(create: (ctx)=>ThemeProvider()),
    ],
        child: MyApp()));
  }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider=Provider.of<ThemeProvider>(context);
    return MaterialApp(
      themeMode: themeProvider.themeMode,
        theme: MyThemes.lightTheme,
        darkTheme: MyThemes.darkTheme,
        debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
//SharedPreferences.getInstance().then((instance){
//     darkMode=instance.getBool('darkMode')!;
