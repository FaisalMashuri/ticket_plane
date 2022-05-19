import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destination_card.dart';
import 'package:airplane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Howdy, \nFaisal Mashuri",
                    style: blackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Where to fly today",
                    style:
                        greyTextStyle.copyWith(fontSize: 16, fontWeight: light),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/image_profile.png"))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                title: "Lake Ciliwung",
                city: "Tangerang",
                imageUrl: "assets/image_destination1.png",
                rating: 4.8,
              ),
              DestinationCard(
                title: "White House",
                city: "Spain",
                imageUrl: "assets/image_destination2.png",
                rating: 4.7,
              ),
              DestinationCard(
                title: "Lake Ciliwung",
                city: "Tangerang",
                imageUrl: "assets/image_destination3.png",
                rating: 4.8,
              ),
              DestinationCard(
                title: "Lake Ciliwung",
                city: "Singapore",
                imageUrl: "assets/image_destination4.png",
                rating: 4.8,
              ),
              DestinationCard(
                title: "Lake Ciliwung",
                city: "Jepang",
                imageUrl: "assets/image_destination5.png",
                rating: 4.8,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, bottom: 70, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "New This Year",
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semiBold),
            ),
            DestinationTile(
              title: "Danau Berantan",
              city: "Singaraja",
              imageUrl: "assets/image_destination6.png",
              rating: 4.7,
            ),
            DestinationTile(
              title: "Danau Berantan",
              city: "Singaraja",
              imageUrl: "assets/image_destination7.png",
              rating: 4.7,
            ),
            DestinationTile(
              title: "Danau Berantan",
              city: "Singaraja",
              imageUrl: "assets/image_destination8.png",
              rating: 4.7,
            ),
            DestinationTile(
              title: "Danau Berantan",
              city: "Singaraja",
              imageUrl: "assets/image_destination9.png",
              rating: 4.7,
            ),
            DestinationTile(
              title: "Danau Berantan",
              city: "Singaraja",
              imageUrl: "assets/image_destination10.png",
              rating: 4.7,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [header(), popularDestination(), newDestination()],
    );
  }
}
