import 'package:flutter/material.dart';
import 'package:startup_namer/find_activity_route/discover.dart';
import 'package:startup_namer/find_activity_route/findnear.dart';
import 'package:startup_namer/find_activity_route/findactivity.dart';
import 'package:startup_namer/post_activity_route/postact.dart';
import 'package:startup_namer/post_activity_route/postdetails.dart';
import 'package:startup_namer/post_activity_route/postlocation.dart';
import 'constants.dart';
import 'main.dart';

class Routerr {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => RandomWords());
      case nearRoute:
        return MaterialPageRoute(builder: (_) => FindNear());
      case activityRoute:
        return MaterialPageRoute(builder: (_) => FindActivity());
      case discoverRoute:
        return MaterialPageRoute(builder: (_) => Discover());
      case postAct:
        return MaterialPageRoute(builder: (_) => PostAct());
      case postLocation:
        return MaterialPageRoute(builder: (_) => PostLocation());
      case postDetails:
        return MaterialPageRoute(builder: (_) => PostDetails());
      default:
        return MaterialPageRoute(
            builder: (_) =>
                Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}