import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatenews/homepage/homepage.dart';
import 'package:updatenews/providers/newsprovider.dart';
import 'package:updatenews/providers/searchprovider.dart';
import 'package:updatenews/splashscreen/splash.dart';

void main() {
  runApp( MultiProvider(providers: [
    ChangeNotifierProvider(create: (ctx)=>SearchProvider()),
    ChangeNotifierProvider(create: (ctx)=>Newsprovider()),
  ],
  child: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen()
    );
  }
}
