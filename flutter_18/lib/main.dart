import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 五星
    Widget packedRow = new Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.green[500]),
        new Icon(Icons.star, color: Colors.black),
        new Icon(Icons.star, color: Colors.black),
      ],
    );

    TextStyle descTextStyle = new TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w800,
      fontFamily: 'Roboto',
      letterSpacing: 0.5,
      fontSize: 13.0,
      height: 2.0,
    );

    // 五星及评论
    Widget rating = new Container(
      padding: new EdgeInsets.all(20.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          packedRow,
          new Text(
            '23个评论',
            style: descTextStyle,
          )
        ],
      ),
    );

    var iconList = DefaultTextStyle.merge(
        style: descTextStyle,
        child: new Container(
          padding: new EdgeInsets.all(5.0),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  new Text("食材:"),
                  new Text('30分钟')
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  new Text("烹饪:"),
                  new Text('5分钟')
                ],
              ),
              new Column(
                children: <Widget>[
                  new Icon(
                    Icons.kitchen,
                    color: Colors.green[500],
                  ),
                  new Text("品尝:"),
                  new Text('25分钟')
                ],
              )
            ],
          ),
        ));

    Container titleText = new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Text(
        '黑椒牛排',
        style: new TextStyle(
            fontWeight: FontWeight.w800, letterSpacing: 0.5, fontSize: 20.0),
      ),
    );

    Text subTitle = new Text(
      '去超市买两块上好的牛排也不是很贵，至少比在外面吃要便宜很多。用黑胡椒碎、百里香、鼠尾草、迷迭香等混合成的香草料腌制提香味，大蒜、洋葱末去腥提鲜，柠檬汁去腥提味；在家也能打造出和西餐厅一样美味的黑椒香草牛排。咱也喝点红酒，看着电视，吃着牛排，感觉也不错呀！',
      textAlign: TextAlign.center,
      style: new TextStyle(fontFamily: 'Georgia', fontSize: 15.0),
    );

    Container leftColumn = new Container(
      padding: new EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 10.0),
      child: new Column(
        children: <Widget>[
          titleText,
          subTitle,
          rating,
          iconList,
        ],
      ),
    );

    var mainImg = new Image.asset(
      'images/shicai.jpg',
      fit: BoxFit.cover,
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Center(
        child: new Container(
          margin: new EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 5.0),
          child: new Card(
            child: new Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  width: 375.0,
                  child: leftColumn,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
