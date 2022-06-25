import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayout(title: "Route Two", children: [
      Text("argument: ${arguments}", textAlign: TextAlign.center),
      ElevatedButton(
          onPressed: () => {Navigator.of(context).pop()}, child: Text('pop')),
      ElevatedButton(
          onPressed: () =>
              {Navigator.of(context).pushNamed('/three', arguments: 123)},
          child: Text("Push"))
    ]);
  }
}
