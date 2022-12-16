import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:updatenews/providers/ThemeProvider.dart';
class ChangeTheme extends StatelessWidget {
  const ChangeTheme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch.adaptive(
      activeColor: Colors.black,
        inactiveThumbColor: Colors.white,
        value: Provider.of<ThemeProvider>(context,listen: false).isDarkMode,
        onChanged: (value){
          final provider=Provider.of<ThemeProvider>(context,listen: false);
          provider.currentTheme(value);

        });
  }
}
