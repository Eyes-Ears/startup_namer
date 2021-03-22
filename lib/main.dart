import 'package:startup_namer/router.dart';
import 'package:startup_namer/screens/wrapper.dart';
import 'package:startup_namer/services/auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:startup_namer/models/user.dart';
import 'shared/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
        home: Wrapper(),
        onGenerateRoute: Routerr.generateRoute,
        initialRoute: homeRoute,
      ),

    );
  }
}

