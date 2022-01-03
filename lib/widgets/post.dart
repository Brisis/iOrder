import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;

// import 'package:hr24/icons/my_flutter_app_icons.dart';

class PostCard extends StatelessWidget {
  String image;

  PostCard({Key? key, required this.image}) : super(key: key);
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
                      "Place Order",
                      style: theme.textTheme.caption!.copyWith(fontWeight: FontWeight.bold, color: constants.linkColor),
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text("Cooked Chineese Rice with onion and tomatoes:", maxLines: 1, style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis))),
              SizedBox(
                width: 10.0,
              ),
              Text("USD \$1.50", style: theme.textTheme.bodyText2!.copyWith(fontWeight: FontWeight.bold)),
            ],
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
        ],
      ),
    );
  }
}
