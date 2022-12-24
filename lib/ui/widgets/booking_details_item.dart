import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BookingDetails extends StatelessWidget {
  final String title;
  final String value;
  final Color valueColor;
  const BookingDetails({Key? key, required this.title, required this.value, required this.valueColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 5),
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/icon_check.png",
                    ),
                  ),
                ),
              ),
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontWeight: regular,
                ),
              ),
            ],
          ),
          Container(
            child: Text(
              value,
              style: blackTextStyle.copyWith(
                fontWeight: bold,
                color: valueColor
              ),
            ),
          ),
        ],
      ),
    );
  }
}
