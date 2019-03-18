import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  final Widget child;

  LayoutDemo({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('不透明度'),
      ),
      body: new Center(
        child: new Opacity(
          opacity: 1.0, // 0.0< value <1.0
          child: new Container(
            width: 250.0,
            height: 250.0,
            decoration: new BoxDecoration(color: const Color(0xff000000)),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(title: 'flutter教程', home: new LayoutDemo()));
}
