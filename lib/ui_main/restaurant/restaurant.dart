import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/explore/places.dart';
import 'package:iorder/ui_main/restaurant/reviews.dart';
import 'package:iorder/ui_main/restaurant/map.dart';
import 'package:iorder/ui_main/ui_pages/product.dart';

class RestaurantScreen extends StatefulWidget {
  const RestaurantScreen({Key? key}) : super(key: key);

  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  List<PostCard> postCards = [
    const PostCard(imagePath: "assets/resta2.jpeg", name: 'Fish & Chips', price: 1.40),
    const PostCard(imagePath: "assets/resta2.jpeg", name: 'Fish & Chips', price: 2.05),
    const PostCard(imagePath: "assets/resta2.jpeg", name: 'Fish & Chips', price: 33),
    const PostCard(imagePath: "assets/resta2.jpeg", name: 'Fish & Chips', price: 1),
    const PostCard(imagePath: "assets/resta2.jpeg", name: 'Fish & Chips', price: 3),
    const PostCard(imagePath: "assets/resta2.jpeg", name: 'Fish & Chips', price: 12),
    const PostCard(imagePath: "assets/resta2.jpeg", name: 'Fish & Chips', price: 7.99),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: constants.mainColor,
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            leading: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PlacesScreen()));
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: constants.whiteColor,
                )),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                "Sushi Centre",
                style: theme.textTheme.headline6!.copyWith(
                  color: constants.whiteColor,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  color: constants.blackColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    image: const AssetImage(
                      'assets/resta2.jpeg',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              InkWell(
                onTap: () {},
                child: Container(
                  height: Platform.isIOS ? 70 : 60,
                  decoration: BoxDecoration(
                    color: constants.mainColorShade8,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(0.0, 0.0),
                        blurRadius: 1.6,
                        spreadRadius: 3.5,
                      )
                    ],
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Place your Order",
                    style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold, color: constants.whiteColor),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        CupertinoIcons.share,
                        color: constants.blackColor,
                      ),
                      Text(
                        'Share',
                        style: theme.textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantReviews()));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(CupertinoIcons.star, color: constants.blackColor),
                        Text(
                          'Reviews',
                          style: theme.textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantMap()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(CupertinoIcons.map, color: constants.blackColor),
                          Text(
                            'Place',
                            style: theme.textTheme.caption!.copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ))
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: constants.whiteColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.07), BlendMode.dstATop),
                    image: const AssetImage(
                      'assets/map.jpeg',
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '123 Lobengula Street, Byo',
                            style: theme.textTheme.caption!.copyWith(color: constants.greyColor, fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'Zimbabwe, Mat North',
                            style: theme.textTheme.caption!.copyWith(color: constants.greyColor),
                          ),
                          Text(
                            'Sushi Place',
                            style: theme.textTheme.caption!.copyWith(color: constants.greyColor),
                          ),
                        ],
                      ),
                      const Icon(
                        CupertinoIcons.location,
                        color: constants.linkColor,
                        size: 25,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Phone Number:',
                          style: theme.textTheme.caption!.copyWith(color: constants.greyColor),
                        ),
                        Text(
                          '(+263) 784 174 687',
                          style: theme.textTheme.caption!.copyWith(color: constants.linkColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Open Hours:',
                          style: theme.textTheme.caption!.copyWith(color: constants.greyColor),
                        ),
                        Text(
                          '0830hrs - 1830hrs',
                          style: theme.textTheme.caption!.copyWith(color: constants.linkColor),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Average Cost:',
                          style: theme.textTheme.caption!.copyWith(color: constants.greyColor),
                        ),
                        Text(
                          "\$1.50 - \$30.00",
                          style: theme.textTheme.caption!.copyWith(color: constants.linkColor),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Meal Posts',
                      style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ..._postsWrap(postCards),
                  ],
                ),
              ),
              //Widgets Here
            ]),
          ),
        ],
      ),
    );
  }
}

List<Widget> _postsWrap(_props) {
  List<Widget> widgets = [];

  for (int i = 0; i < _props.length; i += 2) {
    Widget item1 = _props[i];
    Widget item2 = i + 1 >= _props.length ? const SizedBox() : _props[i + 1];
    widgets.add(
      Container(
        height: 200,
        margin: const EdgeInsets.only(bottom: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: item1,
            ),
            const SizedBox(
              width: 10.0,
            ),
            Flexible(
              child: item2,
            ),
          ],
        ),
      ),
    );
  }

  return widgets;
}

class PostCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final double price;
  const PostCard({
    Key? key,
    required this.imagePath,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(color: constants.whiteColor, borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen()));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    ),
                    image: DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen()));
              },
              child: Text(
                name,
                style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis),
                maxLines: 1,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '\$$price USD',
                  style: theme.textTheme.bodyText2!.copyWith(
                    color: constants.greyColor,
                  ),
                ),
                const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: constants.linkColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
