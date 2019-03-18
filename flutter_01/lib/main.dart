import 'package:flutter/material.dart';

class COntainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: new Container(
        width: 300.0,
        height: 400.0,
        decoration: new BoxDecoration(
            color: const Color(0xfffce5cd),
            border: new Border.all(color: const Color(0xff6d9eeb), width: 8.0)),
        child: new Text('容器演示'),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(title: 'flutter教程', home: new COntainerDemo()));
}
