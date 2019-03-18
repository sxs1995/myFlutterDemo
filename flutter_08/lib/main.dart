import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  final Widget child;

  LayoutDemo({Key key, this.child}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: new AppBar(
  //       title: new Text('强制大小'),
  //     ),
  //     body: new SizedBox(
  //       width: 250.0,
  //       height: 250.0,
  //       child: new Container(
  //           decoration: new BoxDecoration(color: Colors.lightBlueAccent[100])),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('强制比例'),
      ),
      body: new AspectRatio(
        aspectRatio: 3.0 / 2.0,
        child: new Container(
          decoration: new BoxDecoration(color: Colors.lightBlueAccent[100]),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(title: 'flutter教程', home: new LayoutDemo()));
}
