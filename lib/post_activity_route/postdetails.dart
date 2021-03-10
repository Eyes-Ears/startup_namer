import 'package:flutter/material.dart';
import 'package:startup_namer/constants.dart';

class PostDetails extends StatefulWidget {
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  bool _checked = false;
  bool _checkedbi = false;
  bool _checkedru = false;
  bool _checkedsw = false;
  bool _checkedsu = false;
  bool _checkedka = false;
  bool _checkedca = false;
  bool _checkedfl = false;
  bool _checkednf = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('postdetails.dart'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/images/what_kind.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Rock Climbing'),
                value: _checked,
                onChanged: (value) {
                  setState(() {
                    _checked = !_checked;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Biking'),
                value: _checkedbi,
                onChanged: (value) {
                  setState(() {
                    _checkedbi = !_checkedbi;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Running'),
                value: _checkedru,
                onChanged: (value) {
                  setState(() {
                    _checkedru = !_checkedru;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Swimming'),
                value: _checkedsw,
                onChanged: (value) {
                  setState(() {
                    _checkedsw = !_checkedsw;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Surfing'),
                value: _checkedsu,
                onChanged: (value) {
                  setState(() {
                    _checkedsu = !_checkedsu;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Kayaking'),
                value: _checkedka,
                onChanged: (value) {
                  setState(() {
                    _checkedka = !_checkedka;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Canoeing'),
                value: _checkedca,
                onChanged: (value) {
                  setState(() {
                    _checkedca = !_checkedca;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('Flying'),
                value: _checkedfl,
                onChanged: (value) {
                  setState(() {
                    _checkedfl = !_checkedfl;
                  });
                },
              ),
              CheckboxListTile(
                controlAffinity: ListTileControlAffinity.leading,
                title: Text('None Fun'),
                value: _checkednf,
                onChanged: (value) {
                  setState(() {
                    _checkednf = !_checkednf;
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
          onPressed: () => Navigator.pushNamed(context, postPace)),
    );
  }
}