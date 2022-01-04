import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/restaurant/restaurant.dart';
import 'package:iorder/widgets/review.dart';

class RestaurantReviews extends StatefulWidget {
  const RestaurantReviews({Key? key}) : super(key: key);

  @override
  _RestaurantReviewsState createState() => _RestaurantReviewsState();
}

class _RestaurantReviewsState extends State<RestaurantReviews> {
  _buildList(int count) {
    List<Widget> listItems = [];
    for (int i = 0; i < count; i++) {
      listItems.add(Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: ReviewCard(
            name: 'Jessica Mudyn',
            imagePath: 'assets/girl.jpeg',
            orders: 3,
            rating: 5,
            description: 'This Chineese Restaurant has the best sushi ever. I ate some fish spiced with onion and tomatoes that were so good that when i get back home i cook some of my own.',
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
              "Reviews (8)",
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
            expandedHeight: 80.0,
            floating: true,
            pinned: true,
            actions: <Widget>[
              TextButton(
                onPressed: () {},
                child: Text(
                  'Add',
                  style: theme.textTheme.headline6!.copyWith(color: constants.linkColor),
                ),
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_buildList(8)),
          ),
        ],
      ),
    );
  }
}
