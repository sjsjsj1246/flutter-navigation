# flutter_navigation

- Navigation
- namedRoute: web처럼 라우팅 가능
- push

```dart
Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => RouteOneScreen(number: 123)));
Navigator.of(context).pushNamed('/three', arguments: 123);
Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => RouteThreeScreen()));
Navigator.of(context).pushNamedAndRemoveUntil('/three', (route) => route.settings.name =='/');
```

- pop

```dart
Navigator.of(context).pop(123);
Navigator.of(context).push(MaterialPageRoute(builder: (_) => RouteTwoScreen(), settings: RouteSettings(arguments: 789)))
```
