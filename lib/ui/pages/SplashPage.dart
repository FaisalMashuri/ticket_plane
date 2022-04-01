import 'dart:async';

import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/GetStartedPage.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushNamed(
        context,
        "/get-started"
      );
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 30),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/icon_plane.png"
                  )
                )
              ),
            ),
            Text("Airplane", style: whiteTextStyle.copyWith(
              fontSize: 32,
              fontWeight: bold,
              letterSpacing: 10
            ) ,)
          ]
        ),
      ),
    );
  }
}