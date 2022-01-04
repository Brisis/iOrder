import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/widgets/product_card.dart';
import 'package:iorder/widgets/review.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  _buildList(int count) {
    List<Widget> listItems = [];
    for (int i = 0; i < count; i++) {
      listItems.add(Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Column(
            children: [
              ReviewCard(
                name: 'Jessica Mudyn',
                imagePath: 'assets/girl.jpeg',
                orders: 3,
                rating: 4,
                description: 'This Chineese Restaurant has the best sushi ever. I ate some fish spiced with onion and tomatoes that were so good that when i get back home i cook some of my own.',
              ),
              const Divider(
                color: constants.greyColorFade,
                thickness: 2.0,
              ),
            ],
          )));
    }
    return listItems;
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: constants.whiteColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              "Meal Detail",
              style: theme.textTheme.headline6,
            ),
            leading: InkWell(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantScreen()));
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                )),
            backgroundColor: constants.whiteColor,
            expandedHeight: 50.0,
            floating: true,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Divider(),
              ProductCard(
                image: "assets/food2.jpeg",
                avgrating: 4,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Reviews (3)',
                  style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(
                color: constants.greyColorFade,
                thickness: 2.0,
              ),
              ..._buildList(3)
            ]),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Center(
          child: Text(
            "Order",
            style: theme.textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: constants.whiteColor),
          ),
        ),
      ),
    );
  }
}
