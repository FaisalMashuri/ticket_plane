import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button_widget.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget BonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image_card.png'),
            ),
            boxShadow: [
              BoxShadow(
                color: kPrimaryColor.withOpacity(0.5),
                offset:Offset(0,10),
                blurRadius: 50 
              )
            ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name", style: whiteTextColor.copyWith(
                        fontWeight: semiBold
                      ),),
                      Text("Faisal Mashuri", style: whiteTextColor.copyWith(
                        fontWeight: medium,
                        fontSize: 20
                      ),)
                    ],
                  ),
                ),
                Container(
                  height: 24,
                  width: 24,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_plane.png')
                    )
                  ),
                ),
                SizedBox(width: 6,),
                Text("Pay", style: whiteTextColor.copyWith(
                  fontWeight: medium,
                  fontSize: 16
                ),)
              ],
            ),
            SizedBox(height: 41,),
            Text(
              "Balance",
              style: whiteTextColor.copyWith(
                fontSize: 16,
                fontWeight: semiBold
              ),
            ),
            Text(
              "IDR 200.000.000",
              style: whiteTextColor.copyWith(
                fontSize: 26,
                fontWeight: medium
              ),
            )
          ],
        )
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 60),
        child: Text(
          "Big Bonus 🎉",
          style: blackTextStyle.copyWith(
            fontSize: 32,
            fontWeight: semiBold
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 20),
        child: Text(
          "We give you earlu credit so that\nyou can buy a flight ticket",
          style: greyTextColor.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
          textAlign: TextAlign.center,
        )
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BonusCard(),
            title(),
            subtitle(),
            CustomButton(
              title: "Start Flight Now",
              width: 300,margin: EdgeInsets.only(top: 50), 
              onPressed: () {
                Navigator.pushNamed(context, "/main");
              }
            )
          ],
        ),
      ),
    );
  }
}
