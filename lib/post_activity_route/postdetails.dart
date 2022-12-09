import 'package:flutter/material.dart';

class PostDetails extends StatefulWidget {
  @override
  _PostDetailsState createState() => _PostDetailsState();
}

class _PostDetailsState extends State<PostDetails> {
  bool _checked = false;
  bool _checkedbi = false;
  bool _checkedb2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('postdetails.dart'),
        ),
        body: ListView(children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Activity title',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: OutlinedButton(
                    onPressed: null,
                    child: Text('Find location'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Description',
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Open'),
                      value: _checked,
                      onChanged: (value) {
                        setState(() {
                          _checked = !_checked;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('Closed'),
                      value: _checkedbi,
                      onChanged: (value) {
                        setState(() {
                          _checkedbi = !_checkedbi;
                        });
                      },
                    ),
                    CheckboxListTile(
                      controlAffinity: ListTileControlAffinity.leading,
                      title: Text('conceal from men?'),
                      value: _checkedb2,
                      onChanged: (value) {
                        setState(() {
                          _checkedb2 = !_checkedb2;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.directions_run),
                            onPressed: null),
                        Text('run'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.directions_bike),
                            onPressed: null),
                        Text('bike'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.pool), onPressed: null),
                        Text('swim'),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.fitness_center),
                            onPressed: null),
                        Text('lift'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.sports_kabaddi),
                            onPressed: null),
                        Text('volleyball'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.sports_tennis),
                            onPressed: null),
                        Text('pickleball'),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.sports_handball),
                            onPressed: null),
                        Text('handball'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.self_improvement),
                          onPressed: null,
                          color: Colors.lightBlue,
                        ),
                        Text('yoga'),
                      ],
                    ),
                    Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.sports_soccer),
                          onPressed: null,
                          color: Colors.lightBlue,
                        ),
                        Text('ball sport'),
                      ],
                    ),
                  ],
                )
              ])
        ]));
  }
}
