import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  final String title;
  const InterestItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 10),
            width: 20,
            height: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icon_check.png"))),
          ),
          Text(
            title,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: semiBold),
          )
        ],
      ),
    );
  }
}
