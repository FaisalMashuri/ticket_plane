import 'package:airplane/ui/pages/GetStartedPage.dart';
import 'package:airplane/ui/pages/SplashPage.dart';
import 'package:airplane/ui/pages/bonus_page.dart';
import 'package:airplane/ui/pages/main_page.dart';
import 'package:airplane/ui/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashPage(),
        "/get-started" : (context) => GetStartedPage(),
        "/sign-up": (context) => SignUpPage(),
        "/bonus-page": (context) => BonusPage(),
        '/main': (context) => MainPage()
      }
   );
  }
}