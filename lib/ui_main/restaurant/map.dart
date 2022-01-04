import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iorder/models/location.dart' as location;
import 'package:iorder/ui_main/restaurant/restaurant.dart';

class RestaurantMap extends StatefulWidget {
  const RestaurantMap({Key? key}) : super(key: key);

  @override
  _RestaurantMapState createState() => _RestaurantMapState();
}

class _RestaurantMapState extends State<RestaurantMap> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await location.getGoogleOffices();
    if (!mounted) return;
    setState(() {
      _markers.clear();
      for (final office in googleOffices.offices) {
        final marker = Marker(
          markerId: MarkerId(office.name),
          position: LatLng(office.lat, office.lng),
          infoWindow: InfoWindow(
            title: office.name,
            snippet: office.address,
          ),
        );
        _markers[office.name] = marker;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text(
              "Sushi Centre",
              style: theme.textTheme.headline6,
            ),
            leading: const Icon(
              Icons.location_city,
              // color: constants.linkColor,
              // size: 40,
            ),
            backgroundColor: constants.whiteColor,
            expandedHeight: 100.0,
            floating: true,
            pinned: true,
            actions: <Widget>[
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantScreen()));
                },
                child: const Icon(
                  Icons.store,
                  size: 40,
                  color: constants.linkColor,
                ),
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
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 500,
                child: GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: const CameraPosition(
                    target: LatLng(0, 0),
                    zoom: 2,
                  ),
                  markers: _markers.values.toSet(),
                ),
              ),
              // const SizedBox(
              //   height: 10,
              // ),
              const RestaurantCard()
            ]),
          ),
          // Place sliver widgets here
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
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const RestaurantScreen()));
            },
            child: Container(
              height: 100,
              width: 100,
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
              height: 100,
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
            height: 100,
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
