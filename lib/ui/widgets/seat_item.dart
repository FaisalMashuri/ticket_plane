import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // Note 0 => available, 1=>selected, 2=>unavailable
  final int status;
  const SeatItem({Key? key, required this.status}) : super(key: key);

  backgroundColor() {
    switch (status) {
      case 0:
        return kAvailableColor;
      case 1:
        return kPrimaryColor;
      case 2:
        return kUnavailableColor;
      default:
    }
  }

  borderColor() {
    switch(status){
      case 0:
        return kPrimaryColor;
      case 1:
        return kPrimaryColor;
      case 2:
        return kUnavailableColor;
      default:
        return kUnavailableColor;
    }
  }

  child() {
    switch(status) {
      case 1:
        return Center(
          child: Text(
            "You",
            style: whiteTextStyle.copyWith(
              fontWeight: semiBold
            ),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: borderColor(),
          width: 2
        )
      ),
      child: child(),
    );
  }
}
