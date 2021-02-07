import 'package:flutter/material.dart';
import 'package:startup_namer/secondpage.dart';
import 'constants.dart';
import 'find_activity_route/findactivity.dart';
import 'main.dart';

class Routerr {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homeRoute:
        return MaterialPageRoute(builder: (_) => RandomWords());
      case secondRoute:
        return MaterialPageRoute(builder: (_) => SecondScreen());
      case activityRoute:
        return MaterialPageRoute(builder: (_) => FindActivity());
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
