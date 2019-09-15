import 'package:flutter/material.dart';

// main.dart
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Navigation',
      home: new FirstScreen(),
    );
  }
}

// demo1_navigation.dart
class FirstScreen extends StatelessWidget {
  _onPress(context){
     Navigator.push(context, PageRouteBuilder(
       opaque: false,
       pageBuilder: (BuildContext context, _, __) {
         return new SecondScreen();
       },
       transitionsBuilder: (___, Animation<double> animation, ____, Widget child) {
          return SlideTransition(
            position: Tween<Offset>(
              // 设置滑动的 X , Y 轴
              begin: Offset(-1.0, 0.0),
              end: Offset(0.0,0.0)
            ).animate(CurvedAnimation(
              parent: animation,
              curve: Curves.fastOutSlowIn
            )),
            child: child,
          );
       }
     ));
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('First Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Launch second screen'),
          onPressed: ()=>_onPress(context)
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Second Screen'),
      ),
      body: new Center(
        child: new RaisedButton(
          child: new Text('Go back!'),
          onPressed: ()=>Navigator.pop(context),
        ),
      ),
    );
  }
}