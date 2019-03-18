import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  final Widget child;

  LayoutDemo({Key key, this.child}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return new Scaffold(
  //     appBar: new AppBar(
  //       title: new Text('水平方向布局'),
  //     ),
  //     body: new Row(
  //       children: <Widget>[
  //         new RaisedButton(
  //           onPressed: () {
  //             print('点击红色按钮');
  //           },
  //           color: const Color(0xffcc0000),
  //           child: new Text(
  //             '红色按钮',
  //             style: new TextStyle(color: const Color(0xffffffff)),
  //           ),
  //         ),
  //         new Flexible(
  //           flex: 1,
  //           fit: FlexFit.tight, //填充
  //           child: new RaisedButton(
  //             onPressed: () {
  //               print('点击黄色按钮');
  //             },
  //             color: const Color(0xfff1c232),
  //             child: new Text('黄色按钮',
  //                 style: new TextStyle(color: const Color(0xffffffff))),
  //           ),
  //         ),
  //         new RaisedButton(
  //           onPressed: () {
  //             print('点击粉色按钮');
  //           },
  //           color: const Color(0xffea9999),
  //           child: new Text(
  //             '粉色按钮',
  //             style: new TextStyle(color: const Color(0xffffffff)),
  //           ),
  //         )
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('垂直方向布局'),
      ),
      body: new Column(
        children: <Widget>[
          new RaisedButton(
            onPressed: () {
              print('点击红色按钮事件');
            },
            color: const Color(0xffcc0000),
            child: new Text('红色按钮'),
          ),
          new Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: new RaisedButton(
              onPressed: () {
                print('点击黄色按钮事件');
              },
              color: const Color(0xfff1c232),
              child: new Text('黄色按钮'),
            ),
          ),
          new RaisedButton(
            onPressed: () {
              print('点击粉色按钮事件');
            },
            color: const Color(0xffea9999),
            child: new Text('粉色按钮'),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(new MaterialApp(
    title: '布局模型之水平垂直',
    home: new LayoutDemo(),
  ));
}
