import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SuccessCheckoutPage extends StatelessWidget {
  const SuccessCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/image_success.png",
                    ),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Well Booked 😍",
                  style: blackTextStyle.copyWith(
                    fontWeight: black,
                    fontSize: 28,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 30),
                child: Text(
                  "Are you ready to explore the new\nworld of experiences ?",
                  textAlign: TextAlign.center,
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ),
              CustomButton(title: "My Booking", onPressed: (){
                Navigator.pushReplacementNamed(context, "/main");
              }, )
            ],
          ),
        ),
      ),
    );
  }
}
