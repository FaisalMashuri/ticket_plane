import 'package:airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final String placeholder;
  final bool obsecure;
  const CustomTextField(
    {
      Key? key,
      required this.text,
      required this.placeholder,
      this.obsecure = false
    }
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(text),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obsecure,
            decoration: InputDecoration(
                hintText: placeholder,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(defaultRadius),
                    borderSide: BorderSide(color: kPrimaryColor))),
          )
        ],
      ),
    );
  }
}
