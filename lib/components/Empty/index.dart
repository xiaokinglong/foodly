import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class Empty extends StatefulWidget {
  Empty({Key? key}) : super(key: key);

  @override
  State<Empty> createState() => _EmptyState();
}

class _EmptyState extends State<Empty> with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  initState() {
    super.initState();
    controller = new AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = new Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          if (controller.value == 1.0) {
            controller.animateBack(0.0);
          } else if (controller.value == 0) {
            controller.animateBack(1.0);
          }
          // the state that has changed here is the animation object’s value
        });
      });
    controller.forward();
  }

  @override
  dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: Center(
            child: Opacity(
              opacity: 0.2,
              child: Container(
                width: animation.value * 200,
                height: animation.value * 200,
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
                // width: 132,
                // height: 132,
                width: animation.value * 132,
                height: animation.value * 132,
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
