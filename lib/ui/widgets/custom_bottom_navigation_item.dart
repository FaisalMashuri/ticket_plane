import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class CustomBottonNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isActive;
  const CustomBottonNavigationItem({
    Key? key, 
    required this.imageUrl, 
    this.isActive = false
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(imageUrl))),
        ),
        isActive ? 
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(defaultRadius)),
        ): Container()
      ],
    );
  }
}
