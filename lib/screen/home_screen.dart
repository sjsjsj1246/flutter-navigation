import 'package:flutter/material.dart';
import 'package:flutter_navigation/layout/main_layout.dart';
import 'package:flutter_navigation/screen/route_one_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        //true - pop 가능
        //false - pop 불가능
        final canPop = Navigator.of(context).canPop(); //스택에 최소 한개 이상 있는가 확인

        return canPop; //스택 상단에 아무것도 없으면 false이고 뒤로가기 해도 앱이 꺼지지 않음(Android)
      },
      child: MainLayout(title: "Home Screen", children: [
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Pop")),
        ElevatedButton(
            onPressed: () {
              Navigator.of(context).maybePop();
            },
            child: Text("maybePop")), //스택에 최소 한개 이상 있을 때 pop함
        ElevatedButton(
          onPressed: () async {
            final result = await Navigator.of(context).push(MaterialPageRoute(
                builder: (BuildContext context) => RouteOneScreen(number: 1)));
          },
          child: Text("Push"),
        )
      ]),
    );
  }
}
