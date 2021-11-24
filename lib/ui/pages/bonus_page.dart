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
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Name", style: whiteTextColor.copyWith(
                        fontWeight: light
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
                  fontSize: 20
                ),)
              ],
            )
          ],
        )
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [BonusCard()],
        ),
      ),
    );
  }
}
