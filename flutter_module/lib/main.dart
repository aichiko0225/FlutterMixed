import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';
import 'package:flutter_module/pages/page.dart';
import 'package:flutter_module/pages/route.dart';

// void main() => runApp(MyApp());
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    FlutterBoost.singleton.registerPageBuilders(<String, PageBuilder>{
      'first': (pageName, params, _) =>
          FirstRouteWidget(),
      'second': (pageName, params, _) =>
          SecondRouteWidget(),
      'tab': (pageName, params, _) =>
          TabRouteWidget(),
      'flutterFragment': (pageName, params, _) =>
          FragmentRouteWidget(params),

      ///可以在native层通过 getContainerParams 来传递参数
      'flutterPage': (pageName, params, _) {
        print('flutterPage params:$params');
        return const FlutterRouteWidget();
      },
    });
  }

  @override
  Widget build(BuildContext context) {
//    return CupertinoApp(
//      title: 'Flutter Boost example',
//      builder: FlutterBoost.init(postPush: _onRoutePushed),
//      home: FirstRouteWidget(),
//    );
    return MaterialApp(
      title: 'Flutter Boost example',
      builder: FlutterBoost.init(postPush: _onRoutePushed),
      home: FirstRouteWidget(),
    );
  }

  void _onRoutePushed(
    String pageName,
    String uniqueId,
    Map<dynamic, dynamic> params,
    Route<dynamic> route,
    Future<dynamic> _,
  ) {
    print(pageName);
  }
}
