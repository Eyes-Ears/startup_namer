import 'package:flutter/material.dart';
import 'package:startup_namer/shared/constants.dart';

class PostAct extends StatelessWidget {
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
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(
                    color: Colors.grey[700],
                  ),
                ),
              ],
            ),
          ),
          /*3*/
          Icon(
            Icons.star,
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
                Navigator.pop(context,);// Navigate back to fst screen when tapped.
              },
              child:
              _buildButtonColumn(color, Icons.arrow_back, 'BACK')
          ),

          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, postLocation);
            },
            child:
            _buildButtonColumn(color, Icons.keyboard_arrow_right_outlined, 'POSTLOCATION'),
          ),
        ]
      ),
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),

      child: Text(
        "...PLACEHOLDER FOR INPUT TO DESCRIBE ACTIVITY",
        softWrap: true,
      ),
    );


    return MaterialApp(
      title: 'PostAct',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Post Activity Screen'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/000437960006.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
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