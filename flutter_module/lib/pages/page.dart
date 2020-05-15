import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_boost/flutter_boost.dart';

// ignore: must_be_immutable
class FirstRouteWidget extends StatelessWidget {

  String _title;

//  FirstRouteWidget({this._title});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar:  CupertinoNavigationBar(
        middle: Text(_title == null ? "First Route": _title),
        leading: CupertinoButton(
          child: Icon(Icons.arrow_back_ios, color: CupertinoColors.activeBlue,size: 25,),
          padding: EdgeInsets.all(0),
          onPressed: _goBack,
        )
        
      ),
      child: Center(
        child: CupertinoButton(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: CupertinoColors.activeBlue,
          child: const Text('Open second route'),
          onPressed: () {
            print('open second page!');
            FlutterBoost.singleton
                .open('second')
                .then((value) {
                  print(
                  'call me when page is finished. did recieve second route result $value');
                });
          },
        ),
      ),
    );
  }

  _goBack() {
    FlutterBoost.singleton.closeCurrent();
  }
}

class SecondRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            // Navigate back to first route when tapped.
            final BoostContainerSettings settings =
                BoostContainer.of(context).settings;
            FlutterBoost.singleton.close(
              settings.uniqueId,
              result: <String, dynamic>{'result': 'data from second'},
            );
          },
          child: const Text('Go back with result!'),
        ),
      ),
    );
  }
}

class TabRouteWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tab Route')),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            FlutterBoost.singleton.open('second');
          },
          child: const Text('Open second route'),
        ),
      ),
    );
  }
}

