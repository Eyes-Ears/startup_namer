import 'package:flutter/material.dart';
import 'package:startup_namer/find_activity_route/findnear.dart';
import 'package:startup_namer/find_activity_route/findactivity.dart';
import 'package:startup_namer/post_activity_route/postdesc.dart';
import 'package:startup_namer/post_activity_route/postdetails.dart';
import 'package:startup_namer/post_activity_route/postlocation.dart';
import 'package:startup_namer/post_activity_route/postpace.dart';
import 'package:startup_namer/post_activity_route/postwhen.dart';
import 'package:startup_namer/post_activity_route/postwhere.dart';
import 'package:startup_namer/screens/home/home.dart';
import 'shared/constants.dart';

class Routerr {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => Home());
      case nearRoute:
        return MaterialPageRoute(builder: (_) => FindNear());
      case activityRoute:
        return MaterialPageRoute(builder: (_) => FindActivity());
      case postLocation:
        return MaterialPageRoute(builder: (_) => PostLocation());
      case postWhere:
        return MaterialPageRoute(builder: (_) => PostWhere());
      case postDetails:
        return MaterialPageRoute(builder: (_) => PostDetails());
      case postPace:
        return MaterialPageRoute(builder: (_) => PostPace());
      case postWhen:
        return MaterialPageRoute(builder: (_) => PostWhen());
      case postDesc:
        return MaterialPageRoute(builder: (_) => PostDesc());
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