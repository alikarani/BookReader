import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Read before you think :)"),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
          child: new RaisedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/bookInfo');
              },
              child: Text('Book 1'))),
    );
  }
}
