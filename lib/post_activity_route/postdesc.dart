import 'package:flutter/material.dart';
import 'package:startup_namer/shared/constants.dart';

class PostDesc extends StatefulWidget {
  @override
  _PostDescState createState() => _PostDescState();
}

class _PostDescState extends State<PostDesc> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('postdesc.dart'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/description.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Street'
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'City'
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Zip Code'
                ),
              ),
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Notes'
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                child: Text ('See Map'),
                onPressed: () => Navigator.pushNamed(context, homeRoute),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          backgroundColor: Colors.blue,
          child: new Icon (Icons.arrow_forward_ios_sharp),
          onPressed: () => Navigator.pushNamed(context, postLocation)),
    );
  }
}