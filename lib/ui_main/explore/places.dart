import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/restaurant/restaurant.dart';

class PlacesScreen extends StatefulWidget {
  const PlacesScreen({Key? key}) : super(key: key);

  @override
  _PlacesScreenState createState() => _PlacesScreenState();
}

class _PlacesScreenState extends State<PlacesScreen> {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              "Fast Foods",
              style: theme.textTheme.headline6!.copyWith(color: constants.whiteColor),
            ),
            backgroundColor: constants.mainColor,
            expandedHeight: 200.0,
            floating: true,
            pinned: true,
            leading: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(
                  Icons.arrow_back_ios,
                  color: constants.whiteColor,
                )),
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                decoration: BoxDecoration(
                  color: constants.blackColor,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
                    image: const AssetImage(
                      'assets/cover2.jpeg',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  '20 Restaurants',
                  style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              const RestaurantCard(),
              const RestaurantCard(),
              const RestaurantCard(),
              const RestaurantCard(),
              const RestaurantCard(),
              const RestaurantCard(),
              const RestaurantCard(),
              const RestaurantCard(),
            ]),
          ),
        ],
      ),
    );
  }
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.only(bottom: 10.0),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantScreen()));
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/sushi.jpeg',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: SizedBox(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantScreen()));
                    },
                    child: Text(
                      'Sushi Centre, Byo',
                      style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    '0830hrs - 1830hrs',
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.greyColor),
                  ),
                  Text(
                    'Floora House, 4th floor',
                    style: theme.textTheme.caption!.copyWith(color: constants.greyColor),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 80,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: constants.mainColor,
                  ),
                  child: Text(
                    '4.2',
                    style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor, fontWeight: FontWeight.bold),
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: const Icon(
                    Icons.bookmark,
                    color: constants.linkColor,
                    size: 25,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
