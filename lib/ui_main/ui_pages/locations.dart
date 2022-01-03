import 'package:flutter/material.dart';
import 'package:iorder/constants/constants.dart' as constants;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:iorder/models/locations.dart' as locations;

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices();
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
        SliverFillRemaining(
          child: GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: const CameraPosition(
              target: LatLng(0, 0),
              zoom: 2,
            ),
            markers: _markers.values.toSet(),
          ),
        ), // Place sliver widgets here
      ],
    );
  }
}
