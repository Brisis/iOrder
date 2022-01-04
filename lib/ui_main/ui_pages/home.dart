import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:iorder/widgets/post.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  _buildList(int count) {
    List<Widget> listItems = [];
    for (int i = 0; i < count; i++) {
      listItems.add(Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: PostCard(
            image: "assets/food2.jpeg",
            avgrating: 4,
          )));
    }
    return listItems;
  }

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
        SliverList(
          delegate: SliverChildListDelegate(_buildList(8)),
        ), // Place sliver widgets here
      ],
    );
  }
}
