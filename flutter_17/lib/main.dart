import 'package:flutter/material.dart';

class Myapp extends StatefulWidget {
  final Widget child;

  Myapp({Key key, this.child}) : super(key: key);

  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    @override
    Column buildBtnColumn(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Icon(icon, color: color),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildBtnColumn(Icons.call, '电话'),
          buildBtnColumn(Icons.near_me, '导航'),
          buildBtnColumn(Icons.call, '分享'),
        ],
      ),
    );

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        '''
            红花山公园地处深圳市光明新区公明街道中心,位居松白公路的北端,红花山公园处处是精雕细刻的绿色，整洁、美丽的红花山公园就像一出浴的少女你无法拒绝她的温柔。登上仅百米的红花山极目远眺，楼群与树木花草相互掩映,经过修剪的树木造型别致分列公路两旁。2007年，光明新区公明街道投资30万元建设的红花山公园电子监控系统已完工，该公园各大出入口、环山路和主要休闲景点已设置25个电子监控探头，已经正式投入使用。辖区居民在此活动又多了道安全“保护网”。
          ''',
        softWrap: true,
      ),
    );

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    '红花山公园',
                    style: new TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                new Text(
                  '深圳市，光明新区，公明镇中心',
                  style: new TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),
          new Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          new Text('66')
        ],
      ),
    );
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('布局'),
        ),
        body: new ListView(
          children: <Widget>[
            new Image.asset(
              'images/timg.jpg',
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection
          ],
        ));
  }
}

void main() {
  runApp(new MaterialApp(
      title: 'flutter教程',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Myapp()));
}
