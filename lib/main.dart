import 'package:anzyproject/web_view.dart';
import 'package:flutter/material.dart';
import 'package:anzyproject/Home_Page.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // initialRoute: '/',
        // routes: {
        //   // When navigating to the "/" route, build the FirstScreen widget.
        //   '/': (context) => Home_page(),
        // },
        title: 'كليات الخليج',
        theme: ThemeData(primaryColor: Colors.blue),
        home: Home_page());
  }
}
