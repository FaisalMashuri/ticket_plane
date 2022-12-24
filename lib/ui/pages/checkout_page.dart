import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/pages/success_checkout_page.dart';
import 'package:airplane/ui/widgets/booking_details_item.dart';
import 'package:airplane/ui/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image_checkout.png"),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CGK",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      "Tangerang",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "TLC",
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      "Ciliwung",
                      style: greyTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget bookingDetail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Note : Destination Tile
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/image_destination1.png"))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung",
                        style: blackTextStyle.copyWith(
                            fontSize: 18, fontWeight: semiBold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Tangerang",
                        style: greyTextStyle.copyWith(fontWeight: light),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 2),
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/icon_star.png"))),
                    ),
                    Text(
                      "4.8",
                      style: blackTextStyle.copyWith(fontWeight: medium),
                    )
                  ],
                ),
              ],
            ),

            // Note: Booking Detail Text
            Container(
              margin: EdgeInsets.only(
                top: 25,
              ),
              child: Text(
                "Booking Detail",
                style: blackTextStyle.copyWith(fontWeight: bold, fontSize: 16),
              ),
            ),

            // Note: Booking Details Item
            Column(
              children: [
                BookingDetails(
                  title: "Traveler",
                  value: "2 Person",
                  valueColor: kBlackColor,
                ),
                BookingDetails(
                    title: "Seat", value: "A3, B3", valueColor: kBlackColor),
                BookingDetails(
                    title: "Insurance", value: "YES", valueColor: kGreenColor),
                BookingDetails(
                    title: "Refundable", value: "NO", valueColor: kRedColor),
                BookingDetails(
                    title: "VAT", value: "45%", valueColor: kBlackColor),
                BookingDetails(
                    title: "Price",
                    value: "IDR 6.000.000",
                    valueColor: kBlackColor),
                BookingDetails(
                    title: "Grand Total",
                    value: "12.000.000",
                    valueColor: kPrimaryColor)
              ],
            )
          ],
        ),
      );
    }

    Widget paymentDetail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        decoration: BoxDecoration(color: kWhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                "Payment Detail",
                style: blackTextStyle.copyWith(
                  fontWeight: black,
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 100,
                        height: 60,
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(defaultRadius)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/icon_plane.png"))),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Pay",
                                style: whiteTextStyle.copyWith(
                                    fontWeight: regular, fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDR 80.400.000",
                          style: blackTextStyle.copyWith(
                              fontWeight: bold, fontSize: 18),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Current Balance",
                          style: greyTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget payButton() {
      return Container(
        margin: EdgeInsets.only(top: 10, bottom: 10),
        child: CustomButton(
          title: "Pay Now",
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SuccessCheckoutPage()));
          },
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Text(
          "Terms and Conditions",
          style: greyTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
        backgroundColor: kBackgroundColor,
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            route(),
            bookingDetail(),
            paymentDetail(),
            payButton(),
            tacButton(),
          ],
        ));
  }
}
