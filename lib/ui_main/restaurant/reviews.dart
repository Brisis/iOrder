import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/restaurant/restaurant.dart';

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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantScreen()));
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

class ReviewCard extends StatelessWidget {
  final String name;
  final String imagePath;
  final int orders;
  final int rating;
  final String description;

  ReviewCard({Key? key, required this.name, required this.imagePath, required this.orders, required this.rating, required this.description}) : super(key: key);

  List<Widget> _getRatings(rating) {
    List<Widget> ratings = [];

    for (var i = 0; i < rating; i++) {
      ratings.add(const Padding(
        padding: EdgeInsets.only(right: 5.0),
        child: Icon(
          CupertinoIcons.star,
          size: 25,
          color: constants.mainColor,
        ),
      ));
    }
    return ratings;
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final theme = Theme.of(context);
    return Container(
      width: width,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(color: Colors.white),
      // decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imagePath),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: theme.textTheme.headline6!.copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "$orders purchases",
                        style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis, color: Colors.black54),
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
              ),
              // InkWell(
              //   onTap: () {},
              //   child: Text(
              //     "Place Order",
              //     style: theme.textTheme.headline6!.copyWith(fontSize: 16, fontWeight: FontWeight.bold, color: constants.linkColor),
              //   ),
              // )
              OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    side: const BorderSide(width: 1.5, color: constants.linkColor),
                  ),
                  child: Center(
                    child: Text(
                      "Report",
                      style: theme.textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: constants.linkColor),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Text(description, maxLines: 5, style: theme.textTheme.bodyText2!.copyWith(overflow: TextOverflow.ellipsis)),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [..._getRatings(rating)],
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.hand_thumbsup,
                    size: 25,
                    color: Colors.grey.shade600,
                  ),
                  const SizedBox(width: 20),
                  Icon(
                    CupertinoIcons.chat_bubble,
                    size: 25,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
