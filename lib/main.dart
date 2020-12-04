import 'package:flutter/material.dart';
import 'navigationsType.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Navigation',
      home: Home_page(),
    );
  }
}

class Home_page extends StatelessWidget {
  final String type_of_naviagation;
  final Color color;

  const Home_page({Key key, this.type_of_naviagation, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn flutter Navigations"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Let's learn how to all type of navigations in this app"),
            SizedBox(height: 50),
//
            NavigationType( type_of_naviagation: "Navigate to the next page!"),
            SizedBox(height: 11),
            NavigationType(type_of_naviagation: "Navigate with named routes!"),
            SizedBox(height: 11),

            NavigationType(type_of_naviagation: "Navigate with named routes"),
            SizedBox(height: 11),

            NavigationType(type_of_naviagation: "Return data from a screen"),
            SizedBox(height: 11),

            NavigationType(type_of_naviagation: "Send data to a new screen"),
          ],
        ),
      ),
    );
  }
}
