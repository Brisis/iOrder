import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;

// import 'package:hr24/icons/my_flutter_app_icons.dart';

class ProductCard extends StatelessWidget {
  String image;
  int avgrating;

  ProductCard({Key? key, required this.image, required this.avgrating}) : super(key: key);

  List<Widget> _getRatings(avgrating) {
    List<Widget> ratings = [];

    for (var i = 0; i < avgrating; i++) {
      ratings.add(const Padding(
        padding: EdgeInsets.only(right: 5.0),
        child: Icon(
          CupertinoIcons.star,
          size: 20,
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
              const CircleAvatar(
                backgroundImage: AssetImage('assets/girl.jpeg'),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Jessica's Diner",
                        style: theme.textTheme.headline6!.copyWith(fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Fast food restaurant",
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
                      "Add to Cart",
                      style: theme.textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: constants.linkColor),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Description: ',
                  style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Cooked Chineese Rice with onion and tomatoes',
                  style: theme.textTheme.bodyText1,
                ),
              ],
              //TextStyle(fontSize: 18, fontFamily: 'Raleway', fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RichText(
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Price: ',
                  style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'USD \$1.50',
                  style: theme.textTheme.bodyText1,
                ),
              ],
              //TextStyle(fontSize: 18, fontFamily: 'Raleway', fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          SizedBox(
            //height: 350,
            width: MediaQuery.of(context).size.width,
            child: Image(image: AssetImage(image)),
            // decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(5), image: DecorationImage(image: AssetImage('assets/images/tesla.jpeg'), fit: BoxFit.contain)),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
              Row(
                children: [..._getRatings(avgrating)],
              )
            ],
          ),
        ],
      ),
    );
  }
}
