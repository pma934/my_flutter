import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        StackDemo()
      ],
    ));
  }
}

class ConstrainedBoxDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 200.0,
        minHeight: 200.0,
      ),
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16.0 / 9.0,
      child: Container(
        color: Color.fromRGBO(3, 54, 255, 1.0),
      ),
    );
  }
}

class StackDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment(1.0, 1.0),
      children: <Widget>[
        SizedBox(
            child: Container(
          alignment: Alignment(0.0, -1.0),
          width: 200.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: Color.fromRGBO(3, 54, 255, 1.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
        )),
        SizedBox(height: 32.0),
        SizedBox(
            child: Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(3, 54, 255, 1.0),
                  shape: BoxShape.circle,
                  gradient: RadialGradient(colors: [
                    Color.fromRGBO(4, 12, 255, 1.0),
                    Color.fromRGBO(25, 75, 255, 1.0),
                  ]),
                  // borderRadius: BorderRadius.circular(8.0),
                ),
                child: Icon(Icons.beach_access,
                    color: Colors.white, size: 128.0))),
        Positioned(
            right: 120.0,
            top: 20.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 26.0)),
        Positioned(
            right: 100.0,
            top: 100.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
        Positioned(
            right: 14.0,
            top: 126.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 24.0)),
        Positioned(
            right: 33.0,
            top: 94.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 30.0)),
        Positioned(
            right: 75.0,
            top: 20.0,
            child: Icon(Icons.ac_unit, color: Colors.white, size: 32.0)),
      ],
    );
  }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, {this.size = 32.0});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon, size: size, color: Colors.white),
      width: size + 60,
      height: size + 60,
      color: Color.fromRGBO(3, 34, 255, 1),
    );
  }
}
