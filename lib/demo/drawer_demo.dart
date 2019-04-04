import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      padding: EdgeInsets.all(0),
      children: <Widget>[
        UserAccountsDrawerHeader(
          accountName:
              Text('zxz', style: TextStyle(fontWeight: FontWeight.bold)),
          accountEmail: Text('zxz@qq.com'),
          currentAccountPicture: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://avatars2.githubusercontent.com/u/44082279'),
          ),
          decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                  image: NetworkImage(
                      'https://i0.hdslb.com/bfs/space/cb1c3ef50e22b6096fde67febe863494caefebad.png'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                      Colors.blue[400].withOpacity(0.2), BlendMode.lighten))),
        ),
        ListTile(
            title: Text(
              'Messages',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context)),
        ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context)),
        ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
            ),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0),
            onTap: () => Navigator.pop(context)),
      ],
    ));
  }
}
