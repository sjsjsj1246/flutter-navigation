import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_three_screen.dart';

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
          child: Text("Push")),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(//현재 route를 대체하는 것
                MaterialPageRoute(builder: (_) => RouteThreeScreen()));
          },
          child: Text('push')),
      ElevatedButton(
          onPressed: () => {
                Navigator.of(context).pushNamedAndRemoveUntil(
                    '/three',
                    (route) =>
                        route.settings.name ==
                        '/') //'/'가 스택 최상단에 위치할 때 까지 삭제한다.
              },
          child: Text('PushAndRemoveUntil'))
    ]);
  }
}
