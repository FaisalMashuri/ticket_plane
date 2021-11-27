import 'package:airplane/ui/widgets/custom_bottom_navigation_item.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);
  Widget customBottomNavigation() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 60,
        width: double.infinity,
        margin: EdgeInsets.only(bottom:30, left: defaultMargin, right: defaultMargin),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(18)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           CustomBottomNavigationItem(imageUrl: "assets/icon_home.png", isSelected: true,),
           CustomBottomNavigationItem(imageUrl: "assets/icon_booking.png",),
           CustomBottomNavigationItem(imageUrl: "assets/icon_card.png",),
           CustomBottomNavigationItem(imageUrl: "assets/icon_settings.png",),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          customBottomNavigation()
        ],
      ),
    );
  }
}