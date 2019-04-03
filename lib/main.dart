import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(primaryColor: Colors.yellow));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading:IconButton(
          icon:Icon(Icons.menu),
          tooltip:'导航',
          onPressed: ()=>debugPrint('按下了导航按钮'),
        ),
        title: Text('zxz'),
        actions:<Widget>[
          IconButton(
            icon:Icon(Icons.search),
            tooltip:'搜索',
            onPressed: ()=>debugPrint('按下了搜索按钮'),
          ),
        ],
        elevation: 5.0,
      ),
      body: null,
    );
  }
}


