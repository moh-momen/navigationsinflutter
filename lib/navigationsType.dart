import 'package:flutter/material.dart';
import 'navigate_new_pages_and_back/home_page.dart';

class NavigationType extends StatelessWidget {
  final String type_of_naviagation;

  NavigationType({this.type_of_naviagation});

  Widget build(BuildContext context) {
    return SizedBox(
      width: 300.0,
      height: 50.0,
      child: RaisedButton(
        color: Colors.grey,
        onPressed: () {
          switch (type_of_naviagation) {
            case "Navigate to the next page!":
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => FirstPage(),
              ));
          }
        },
        child: Text(
          type_of_naviagation,
          style: TextStyle(fontSize: 22),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(color: Colors.blueGrey)),
      ),
    );
  }
}
