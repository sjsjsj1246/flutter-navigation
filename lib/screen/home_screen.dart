import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: "Home Screen", children: [
      ElevatedButton(
        onPressed: () async {
          final result = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => RouteOneScreen(number: 1)));
        },
        child: Text("Push"),
      )
    ]);
  }
}
