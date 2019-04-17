import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

// Rx:Reactive Extensions
class RxDartDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RxDartDemo'),
        elevation: 0.0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  @override
  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    super.initState();

    _textFieldSubject = PublishSubject<String>();
    _textFieldSubject
        // .map((item)=>'item:$item')
        // .where((item) => item.length > 9)
        .debounce(Duration(milliseconds: 500)) //间隔
        .listen((data) => print(data));

    // Observable<String> _obserable =
    //   // Observable(Stream.fromIterable(['hello!','你好']));
    //   // Observable.fromFuture(Future.value('hello~'));
    //   // Observable.fromIterable(['hello!','你好']);
    //   // Observable.just('hello');
    //   Observable.periodic(Duration(seconds:3),(x)=>x.toString());

    // _obserable.listen(print);
    // PublishSubject<String> _subject = PublishSubject<String>();
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();  //之前一个
    // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2); //之前n个

    // _subject.add('who!');
    // _subject.add('what!');
    // _subject.listen((data) => print('listen 1: $data'));
    // _subject.add('hello!');
    // _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));
    // _subject.add('wow!');
    // _subject.close();
  }

  @override
  void dispose() {
    super.dispose();
    _textFieldSubject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        primaryColor: Colors.black,
      ),
      child: TextField(
        onChanged: (value) {
          _textFieldSubject.add('input:$value');
        },
        onSubmitted: (value) {
          _textFieldSubject.add('submit:$value');
        },
        decoration: InputDecoration(
          labelText: 'Title',
          filled: true,
        ),
      ),
    );
  }
}
