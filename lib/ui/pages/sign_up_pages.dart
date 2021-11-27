import 'package:airplane/ui/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';
import 'package:airplane/ui/widgets/custom_button_widget.dart';


class SignUpPages extends StatelessWidget {
  const SignUpPages({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Join us and get\nyour next journey', 
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold
          ),
        ),
      );
    }

    Widget InputSection() {
      return Container(
        margin: EdgeInsets.only(top:30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(defaultRadius),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            CustomTextField(text:'Full Name', placeholder: 'Your Full Name'),
            CustomTextField(text:'Email', placeholder: 'Your Email'),
            CustomTextField(text:'Password', placeholder: 'Your Password', obsecure: true,),
            CustomTextField(text:'Hobby', placeholder: 'Your Hobby'),
            CustomButton(title: "Get Started", onPressed: (){
              Navigator.pushNamed(context, "/bonus");
            })
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top:50, bottom:73),
        child: Text("Terms and Conditions", style: greyTextColor.copyWith(
          fontSize: 16,
          fontWeight: light,
          decoration: TextDecoration.underline
        ),),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin
          ),
          children: <Widget>[
            title(),
            InputSection(),
            tacButton()
          ],
        ),
      ),
    );
  }
}