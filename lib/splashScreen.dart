import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import './home.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 2,
      navigateAfterSeconds: new Home(),
      title: new Text(
        'Book Reader App',
        style: new TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 34.0,
            color: Colors.amberAccent),
      ),
      image: new Image.network(
          'https://images-na.ssl-images-amazon.com/images/I/71u3UX28NHL.png'),
      backgroundColor: Colors.white,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.amberAccent,
    );
  }
}
