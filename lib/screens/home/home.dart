import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:startup_namer/shared/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:startup_namer/services/auth.dart';
import 'package:startup_namer/services/database.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Discover();
  }
}

class Discover extends StatefulWidget {
  @override
  _DiscoverState createState() => _DiscoverState();
}

class _DiscoverState extends State<Discover> {
  Completer<GoogleMapController> _controller = Completer();

  static const LatLng _center = const LatLng(35.5950581, -82.5514869);

  final Set<Marker> _markers = {};

  MapType _currentMapType = MapType.normal;

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return StreamProvider<QuerySnapshot>.value(
      value: DatabaseService().points,
      child: MaterialApp(
        home: Scaffold(
          appBar: AppBar(
              title: Text('home.dart'),
              backgroundColor: Colors.blue[700],
              actions: <Widget>[
                FlatButton.icon(
                  icon: Icon(Icons.person),
                  label: Text('logoout'),
                  color: Colors.white,
                  onPressed: () async {
                    await _auth.signOut();
                  },
                ),
              ]),
          body: Stack(
            children: <Widget>[
              GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
                mapType: _currentMapType,
                markers: _markers,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    children: <Widget>[
                      FloatingActionButton(
                        heroTag: "btn9",
                        onPressed: () =>
                            Navigator.pushNamed(context, postDetails),
                        materialTapTargetSize: MaterialTapTargetSize.padded,
                        backgroundColor: Colors.red,
                        child:
                            const Icon(Icons.arrow_forward_rounded, size: 36.0),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
