import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

/// 运营位图片列表。
final List<String> imgList = [
  "http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/1201678.jpg",
  "http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/1200374.jpg",
  "http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/1200375.jpg",
  "http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/1201421.jpg",
  "http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/1200404.jpg",
];

/// 用给定的处理函数（`handler`）处理给定的列表数据（`list`），
/// 返回处理结果列表（`result`）。
List<T> worker<T>(List list, Function handler) {
  List<T> result = [];
  for (var i = 0; i < list.length; i++) {
    result.add(handler(i, list[i]));
  }
  return result;
}

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  /// 当前页面的索引。
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // carousel_slider包里的轮播组件（`CarouselSlider`）组件。
        CarouselSlider(
          // 使用自定义的工人`agent`方法生成一个容器组件列表。
          items: worker<Widget>(imgList, (index, i) {
            return Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      // 装饰图片（`DecorationImage`）类的图片（`image`）属性，
                      // 将图像绘制成装饰。
                      // 通常通过资产图片（`AssetImage`）使用随应用程序一起提供的图像，
                      // 或通过网络图像（`NetworkImage`）使用从网络获取的图像。
                      image: NetworkImage(i),
                      // 适应属性，如何在框里展示图像。
                      // https://docs.flutter.io/flutter/painting/BoxFit-class.html
                      fit: BoxFit.cover)),
            );
          }),
          // 是否自动播放，默认为`false`。
          autoPlay: false,
          // 当前页面在视窗中占用的空间，默认为`0.8`。
          viewportFraction: 1.0,
          // 宽高比例，默认为`16/9`。
          aspectRatio: 3 / 2,
          // 切换时当前页面逐渐变小，新页面逐渐变大直至完全替代当前页面，
          // 默认为`true`。
          distortion: true,
          // 视窗中页面更新时的回调函数。
          updateCallback: (index) {
            setState(() {
              _current = index;
            });
          },
        ),
        // TODO: 第3步：实现“进度条”
        Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 30.0,
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 4.0,
                child: LinearProgressIndicator(
                  backgroundColor: const Color(0xFFE1E1E1),
                  valueColor: AlwaysStoppedAnimation(Color(0xFF414141)),
                  value: (_current + 1) / imgList.length,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 30.0,
              ),
            )
          ],
        )
      ],
    );
  }
}

void main() {
  runApp(new MaterialApp(title: '轮播', home: new CarouselWithIndicator()));
}
