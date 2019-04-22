import 'package:flutter/material.dart';

class RouteListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RouteListDemo'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          RouteChip(routeName:'/about'),
          RouteChip(routeName:'/from'),
          RouteChip(routeName:'/mdc'),
          RouteChip(routeName:'/state-management'),
          RouteChip(routeName:'/stream'),
          RouteChip(routeName:'/rxdart'),
          RouteChip(routeName:'/bloc'),
          RouteChip(routeName:'/http'),
          RouteChip(routeName:'/animation'),
          RouteChip(routeName:'/i18n'),
          RouteChip(routeName:'/test'),
        ],
      ),
    );
  }
}

class RouteChip extends StatelessWidget {
  String routeName;
  RouteChip({Key key,this.routeName}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return ActionChip(
        label: Text('$routeName'),
        onPressed: () {
          Navigator.of(context).pushNamed('$routeName');
        });
  }
}
