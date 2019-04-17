import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamDemo'),
        elevation: 0.0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  @override
  void initState() {
    super.initState();

    print('Creat a stream');
    Stream<String> _streamDemo = Stream.fromFuture(fetchData());
    print('Start listening on a stream');
    _streamDemo.listen(onData);
    print('initialize completed');
  }

  void onData(String data) {
    print('$data');
  }

  Future<String> fetchData() async {
    await Future.delayed((Duration(seconds: 3)));
    return 'hello ~';
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
