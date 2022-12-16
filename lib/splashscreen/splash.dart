import 'package:flutter/material.dart';
import 'package:updatenews/homepage/homepage.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(
          seconds: 3,
        ), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (ctx) =>  home()
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/splash.png',height: MediaQuery.of(context).size.height*.4,),
            SizedBox(height: MediaQuery.of(context).size.height*.1,),
            CircularProgressIndicator(
              color: Colors.green,
            ),
            SizedBox(height: MediaQuery.of(context).size.height*.3,),
            Container(
                alignment: Alignment.bottomCenter,
                child: Text('Sara Yasser',style: TextStyle(color: Colors.green,fontSize: 25),))
          ],
        )
      ),
    );
  }
}