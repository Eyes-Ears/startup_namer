/// This file contains all the routing constants used within the app
import 'package:flutter/material.dart';


const String homeRoute = '/';
const String nearRoute = '/find_activity_route/findnear';
const String activityRoute = '/find_activity_route/findactivity';
const String postAct = '/post_activity_route/postact';
const String postLocation = '/post_activity_route/postlocation';
const String postDetails = '/post_activity_route/postdetails';
const String postPace = '/post_activity_route/postpace';
const String postWhere = '/post_activity_route/postwhere';
const String postWhen = '/post_activity_route/postwhen';
const String postDesc = '/post_activity_route/postdesc';


const textInputDecoration = InputDecoration(
  hintText: 'email',
  fillColor: Colors.grey,
  filled: true,
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0)
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.pink, width: 2.0)
  ),
);