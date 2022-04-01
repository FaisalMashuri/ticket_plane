import 'package:airplane/ui/pages/home_page.dart';
import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget BuildContent() {
      return HomePage();
    }

    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.only(bottom: 30, left: defaultMargin, right: defaultMargin),
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(defaultRadius)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomBottonNavigationItem(imageUrl: "assets/icon_home.png", isActive: true,),
              CustomBottonNavigationItem(imageUrl: "assets/icon_booking.png"),
              CustomBottonNavigationItem(imageUrl: "assets/icon_card.png"),
              CustomBottonNavigationItem(imageUrl: "assets/icon_settings.png"),
            ],
          ),
        ),
      );
    }


    return Scaffold(
      body:Stack(
        children: [
          BuildContent(),
          customButtonNavigation()
        ],
      )
    );
  }
}