import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(title: "Route Three", children: [
      Text('argument: ${arguments}', textAlign: TextAlign.center),
      ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Pop"))
    ]);
  }
}
