import 'package:airplane/ui/pages/choose_seat_page.dart';
import 'package:airplane/ui/widgets/InterestItem.dart';
import 'package:airplane/ui/widgets/PhotoItem.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:airplane/shared/theme.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Stack(
        children: [
          Container(
            width: double.infinity,
            height: 450,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/image_destination1.png"))),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: 20),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_ios),
            ),
          )
        ],
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
              // margin: EdgeInsets.only(top: 10),
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
              margin: EdgeInsets.only(top: 20),
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
                    height: 10,
                  ),
                  Text(
                    "Berada dijalur provinsi yang menghubungkan Denpasar singaraja serta letaknya yang dekat dengan kebun raya eka karya",
                    style: blackTextStyle.copyWith(
                        fontWeight: light, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),

                  // Note : Photos
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Photos",
                    style:
                        blackTextStyle.copyWith(fontSize: 16, fontWeight: bold),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      PhotoItem(imageUrl: "assets/image_photo1.png"),
                      // Spacer(),
                      PhotoItem(imageUrl: "assets/image_photo2.png"),
                      // Spacer(),
                      PhotoItem(imageUrl: "assets/image_photo3.png")
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "Interest",
                    style: purpleTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  ),
                  SizedBox(
                    height: 16,
                  ),

                  Row(
                    children: [
                      InterestItem(title: "Kids Park"),
                      InterestItem(title: "Kids Park"),
                    ],
                  ),

                  SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InterestItem(title: "Kids Park"),
                      InterestItem(title: "Kids Park"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "IDR 2.500.000",
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: medium),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "per orang",
                        style: greyTextStyle.copyWith(fontWeight: light),
                      )
                    ],
                  ),
                  CustomButton(
                    title: "Book Now",
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseSeat()));
                    },
                    width: 158,
                    margin: EdgeInsets.only(left: 40),
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
      body: SingleChildScrollView(
        child: Stack(
          children: [backgroundImage(), customShadow(), content()],
        ),
      ),
    );
  }
}
