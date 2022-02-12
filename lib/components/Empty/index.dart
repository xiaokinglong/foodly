import 'package:flutter/material.dart';

class Empty extends StatelessWidget {
  const Empty({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Center(
            child: Opacity(
              opacity: 0.2,
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  // color: Color.fromRGBO(255, 203, 196, 1),
                  borderRadius: BorderRadius.all(
                    Radius.circular(175),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topRight, //右上
                    end: Alignment.bottomLeft, //左下
                    stops: [0.0, 1.0], //[渐变起始点, 渐变结束点]
                    //渐变颜色[始点颜色, 结束颜色]
                    colors: [
                      Color.fromRGBO(255, 203, 196, 1),
                      Color.fromRGBO(255, 174, 161, 0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Center(
            child: Opacity(
              opacity: 0.2,
              child: Container(
                width: 132,
                height: 132,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(175),
                  ),
                  gradient: LinearGradient(
                    /// 设置渐变色
                    begin: Alignment.topRight, //右上
                    end: Alignment.bottomLeft, //左下
                    stops: [0.0, 1.0], //[渐变起始点, 渐变结束点]
                    //渐变颜色[始点颜色, 结束颜色]
                    colors: [
                      Color.fromRGBO(255, 203, 196, 1),
                      Color.fromRGBO(255, 174, 161, 0),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          child: Center(
            child: Container(
              width: 75,
              height: 110,
              margin: const EdgeInsets.only(
                top: 50,
              ),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 10, 56, 1),
              ),
              child: const Icon(
                Icons.local_activity_outlined,
                size: 50,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
