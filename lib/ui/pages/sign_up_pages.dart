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

      Widget Section(text, placeholder) {
        return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(text),
              SizedBox(height: 6,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: placeholder,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(
                      color: kPrimaryColor
                    )
                  )
                ),
              )
            ],
          ),
        );
      }

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
            Section('Full Name', 'Your Full Name'),
            Section('Email', 'Your Email'),
            Section('Password', 'Your Password'),
            Section('Hobby', 'Your Hobby'),
            CustomButton(title: "Get Started", onPressed: (){})
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