import 'package:flutter/material.dart';
import 'package:startup_namer/shared/constants.dart';

class FindActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Container(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    'New Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Somewhere else',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.sanitizer_rounded,
            color: Colors.red[500],
          ),
          Text('41'),
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
              onTap: () {
                Navigator.pop(context);// Navigate back to fst screen when tapped.
              },
              child:
              _buildButtonColumn(color, Icons.arrow_back, 'GOBACK')
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, homeRoute);// Navigate back to fst screen when tapped.
            },
            child:
            _buildButtonColumn(color, Icons.arrow_forward_rounded, 'FINDNEAR'),
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, homeRoute);
            },
            child:
            _buildButtonColumn(color, Icons.keyboard_arrow_right_outlined, 'DISCOVER'),
          ),

          _buildButtonColumn(color, Icons.share, 'FINDTIME'),
        ],
      ),
    );


    return MaterialApp(
      title: 'Find Activity',
      home: Scaffold(
        appBar: AppBar(
          title: Text('findactivity.dart'),
        ),
        body: ListView(
          children: [
            Image.asset(
              "assets/images/BI1.jpg",
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}