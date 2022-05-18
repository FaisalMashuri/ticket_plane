import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/image_destination1.png"))),
      );
    }

    Widget customShadow() {
      return Container(
        width: double.infinity,
        height: 214,
        margin: EdgeInsets.only(top: 236),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35)),
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  kWhiteColor.withOpacity(0),
                  Colors.black.withOpacity(0.95)
                ])),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin, vertical: 30),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 30),
              width: 108,
              // height: 34,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/icon_emblem.png"))),
            ),
            // Note Title
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lake Ciliwung",
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          "Tangerang",
                          style: whiteTextStyle.copyWith(
                              fontSize: 16, fontWeight: light),
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 2),
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icon_star.png"))),
                      ),
                      Text(
                        "4.5",
                        style: whiteTextStyle.copyWith(
                            fontWeight: medium, fontSize: 20),
                      )
                    ],
                  ),
                ],
              ),
            ),
            // Note About
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                  color: kWhiteColor, borderRadius: BorderRadius.circular(17)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: blackTextStyle.copyWith(
                        fontWeight: extraBold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Berada dijalur provinsi yang menghubungkan Denpasar singaraja serta letaknya yang dekat dengan kebun raya eka karya",
                    style: blackTextStyle.copyWith(
                        fontWeight: light, fontSize: 16),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [backgroundImage(), customShadow(), content()],
      ),
    );
  }
}
