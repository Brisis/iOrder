import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/ui_main/explore/places.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List<ExploreCard> exploreCards = [
    const ExploreCard(imagePath: "assets/beer.png", title: 'Bars & Hotels', places: 19),
    const ExploreCard(imagePath: "assets/dinner.png", title: 'Fine Dining', places: 2),
    const ExploreCard(imagePath: "assets/cafe.png", title: 'Cafes', places: 33),
    const ExploreCard(imagePath: "assets/traditional.png", title: 'Traditional Foods', places: 1),
    const ExploreCard(imagePath: "assets/food.png", title: 'Fast Foods', places: 3),
    const ExploreCard(imagePath: "assets/featured.png", title: 'Featured Foods', places: 12),
    const ExploreCard(imagePath: "assets/nearby.png", title: 'Nearby', places: 7),
  ];

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text(
            "iOrder",
            style: theme.textTheme.headline6,
          ),
          leading: Icon(Icons.menu),
          backgroundColor: constants.whiteColor,
          expandedHeight: 100.0,
          floating: true,
          pinned: true,
          actions: const <Widget>[
            Icon(
              Icons.shopping_bag_outlined,
              size: 40,
              color: constants.linkColor,
            )
          ],
          flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 40,
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(5)),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          icon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          hintText: 'Search for restaurants',
                          hintStyle: TextStyle(color: constants.greyColor),
                          isCollapsed: true,
                          border: InputBorder.none),
                      // decoration: const InputDecoration.collapsed(hintText: "Search here"),
                      keyboardType: TextInputType.text,

                      maxLines: 1,
                    ),
                  ),
                ),
              )),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(10.0),
          sliver: SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 10.0, mainAxisSpacing: 10.0),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PlacesScreen()));
                    },
                    child: exploreCards[index]);
              },
              childCount: exploreCards.length,
            ),
          ),
        )
      ],
    );
  }
}

class ExploreCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final int places;
  const ExploreCard({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.places,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: constants.mainColorShade8,
      ),
      child: Column(
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(imagePath),
              )),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: theme.textTheme.bodyText1!.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            '$places Places',
            style: theme.textTheme.bodyText2!.copyWith(color: constants.whiteColor),
          ),
        ],
      ),
    );
  }
}
