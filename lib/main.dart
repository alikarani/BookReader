import 'package:flutter/material.dart';
import './splashScreen.dart';
import './home.dart';
import './bookInfo.dart';

void main() {
  runApp(ReaderApp());
}

class ReaderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Using MultiProvider is convenient when providing multiple objects.
    return MaterialApp(
        title: 'BookReaderApp',
        initialRoute: '/splashScreen',
        routes: {
          '/splashScreen': (context) => MyHomePage(),
          '/home': (context) => Home(),
          '/bookInfo': (context) => BookInfo()
        });
  }
}
