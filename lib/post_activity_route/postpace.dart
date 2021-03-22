import 'package:flutter/material.dart';
import 'package:startup_namer/shared/constants.dart';

class PostPace extends StatefulWidget {
  @override
  _PostPaceState createState() => _PostPaceState();
}

class _PostPaceState extends State<PostPace> {
  bool _checked = false;
  bool _checkedbi = false;
  bool _checkedru = false;
  bool _checkedsw = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('postpace.dart'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/what_pace.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Intense'),
                value: _checked,
                onChanged: (value) {
                  setState(() {
                    _checked = !_checked;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Moderate'),
                value: _checkedbi,
                onChanged: (value) {
                  setState(() {
                    _checkedbi = !_checkedbi;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Leisurely'),
                value: _checkedru,
                onChanged: (value) {
                  setState(() {
                    _checkedru = !_checkedru;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Flexible'),
                value: _checkedsw,
                onChanged: (value) {
                  setState(() {
                    _checkedsw = !_checkedsw;
                  });
                },
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
          elevation: 3.0,
          backgroundColor: Colors.blue,
          child: new Icon(Icons.arrow_forward_ios_sharp),
          onPressed: () => Navigator.pushNamed(context, postWhere)
      ),
    );
  }
}