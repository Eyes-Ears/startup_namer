import 'package:flutter/material.dart';
import 'package:startup_namer/find_activity_route/findnear.dart';
import 'package:startup_namer/find_activity_route/findactivity.dart';
import 'package:startup_namer/main.dart';
import 'package:startup_namer/post_activity_route/postdetails.dart';
import 'package:startup_namer/post_activity_route/postlocation.dart';
import 'package:startup_namer/post_activity_route/postpace.dart';
import 'constants.dart';

class Routerr {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Discover());
      case nearRoute:
        return MaterialPageRoute(builder: (_) => FindNear());
      case activityRoute:
        return MaterialPageRoute(builder: (_) => FindActivity());
      case postLocation:
        return MaterialPageRoute(builder: (_) => PostLocation());
      case postDetails:
        return MaterialPageRoute(builder: (_) => PostDetails());
      case postPace:
        return MaterialPageRoute(builder: (_) => PostPace());
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