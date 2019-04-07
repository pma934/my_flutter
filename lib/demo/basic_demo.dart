import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        // color: Colors.black12,
        decoration: BoxDecoration(
          image:DecorationImage(
            image: NetworkImage('https://i0.hdslb.com/bfs/space/cb1c3ef50e22b6096fde67febe863494caefebad.png'),
            // repeat: ImageRepeat.repeatY,
            alignment:Alignment.topCenter,
            fit:BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.lightBlue[300].withOpacity(0.5),
              BlendMode.hardLight,
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.pool, size: 32.0, color: Colors.white),
              padding: EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
              margin: EdgeInsets.all(4.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(3, 255, 6, 1.0),
                border: Border.all(
                  color: Colors.blue[200],
                  width: 3.0,
                  style: BorderStyle.solid,
                ),
                // borderRadius: BorderRadius.only(
                //   bottomLeft: Radius.circular(36.0),
                // ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(-5.0, 5.0),
                    color: Color.fromRGBO(26, 233, 12, 1.0),
                    blurRadius: 25.0,
                    spreadRadius: -5.0,
                  )
                ],
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.red,
                    Colors.green,
                  ],
                  // begin:Alignment.topCenter,
                  // end:Alignment.bottomCenter,
                  begin:Alignment(0.0, -1.0),
                  end:Alignment(0.0, 1.0),
                ),
                // gradient: RadialGradient(
                //   colors: [
                //     Colors.blue,
                //     Colors.red,
                //     Colors.green,
                //   ],
                //   center: Alignment(0.7, 0.7),
                //   radius: 0.9,
                // ),
              ),
            )
          ],
        ));
  }
}

class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(
            text: 'zxz',
            style: TextStyle(
              color: Colors.red[500],
              fontSize: 34.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
            children: [
          TextSpan(
              text: '.net',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.tealAccent[700],
              ))
        ]));
  }
}

class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0,
  );
  final String _author = '刘禹锡';
  final String _title = '陋室铭';
  @override
  Widget build(BuildContext context) {
    return Text(
      '《$_title》——$_author。山不在高，有仙则名。水不在深，有龙则灵。斯是陋室，惟吾德馨。苔痕上阶绿，草色入帘青。谈笑有鸿儒，往来无白丁。可以调素琴，阅金经。无丝竹之乱耳，无案牍之劳形。南阳诸葛庐，西蜀子云亭。孔子云：何陋之有？',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
