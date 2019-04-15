import 'package:flutter/material.dart';
import 'demo/listview_demo.dart';
import 'demo/hello_demo.dart';
import 'demo/drawer_demo.dart';
import 'demo/botton_navigation_bar_demo.dart';
import 'demo/basic_demo.dart';
import 'demo/layout_demo.dart';
import 'demo/view_demo.dart';
import 'demo/sliver_demo.dart';
import 'demo/navigator_demo.dart';
import 'demo/form_demo.dart';
import 'demo/material_components.dart';


void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: NavigatorDemo(),//Home(),
        initialRoute: '/mdc',
        routes: {
          '/':(context) => Home(),
          '/about':(context) => Page(title: 'About'),
          '/from':(context) => FromDemo(),
          '/mdc':(context) => MaterialComponents(),
        },
        theme: ThemeData(
            primaryColor: Colors.yellow,
            highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
            splashColor: Colors.white70,
            accentColor: Color.fromRGBO(3, 54, 255, 1.0)
        )
      );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
            title: Text('zxz'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: '搜索',
                onPressed: () => debugPrint('按下了搜索按钮'),
              ),
            ],
            elevation: 5.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              indicatorWeight: 1.0,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.send)),
                Tab(icon: Icon(Icons.signal_cellular_no_sim)),
                Tab(icon: Icon(Icons.flight_takeoff)),
                Tab(icon: Icon(Icons.view_quilt)),
              ],
            )),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            // Icon(Icons.signal_cellular_no_sim,
            //     size: 128.0, color: Colors.black12),
            BasicDemo(),
            // Icon(Icons.flight_takeoff, size: 128.0, color: Colors.black12),
            LayoutDemo(),
            SliverDemo(),//ViewDemo(),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
