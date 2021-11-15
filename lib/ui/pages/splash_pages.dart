import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/logo_logo.png"
                  ),
                )
              ),
            ),
            Text(
              "AIRPLANE",
              style: whiteTextColor.copyWith(
                fontSize: 32,
                fontWeight: medium,
                letterSpacing: 10
              ),
            )
          ],
        ) ,
      ),
    );
  }
}