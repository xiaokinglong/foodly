import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            pinned: true,
            // backgroundColor: Colors.whi,
            title: Text("Home"),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (content, index) {
                if (index == 0) {
                  return ActivityCard();
                }
                return const HomeListItem();
              },
              childCount: 10,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Fluttertoast.showToast(
            msg: "正在开发中...",
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
        },
        child: const Icon(Icons.one_k_sharp),
      ),
    );
  }
}

class HomeListItem extends StatelessWidget {
  const HomeListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 307.0,
      padding: const EdgeInsets.fromLTRB(18, 14, 18, 14),
      child: SizedBox(
          height: 279.0,
          child: Container(
            // decoration: BoxDecoration(
            //     // border: Border.all(width: 1),
            //     ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 134,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://img1.baidu.com/it/u=1897395871,1393698560&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=685",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    top: 11,
                    bottom: 8,
                  ),
                  child: const Text("Carl's Jr. (1001 Veterans Blvd)"),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 13,
                  ),
                  child: const Text("\$\$ . Fast Food . Burger . Chicken"),
                ),
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 11,
                  ),
                  child: Row(
                    children: [
                      RaisedButton(
                        onPressed: () {
                          print("onPressed");
                        },
                        child: Text("3.4 mi"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          print("onPressed");
                        },
                        child: Text("3.4 mi"),
                      ),
                      RaisedButton(
                        onPressed: () {
                          print("onPressed");
                        },
                        child: Text("3.4 mi"),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        color: Colors.black,
                        icon: const Icon(Icons.wechat),
                      ),
                      Container(
                        child: const Text("People say : well packed (15)"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}

class ActivityCard extends StatelessWidget {
  const ActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 26,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            width: 190,
            height: 267,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(254, 243, 211, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.icecream,
                  size: 70,
                ),
                Container(
                  width: 126,
                  height: 38,
                  margin: const EdgeInsets.only(
                    bottom: 14,
                    top: 14,
                  ),
                  child: const Text(
                    "Enjoy 25% Off (upto US \$7)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: 126,
                  height: 14,
                  margin: const EdgeInsets.only(
                    bottom: 24,
                  ),
                  child: const Text(
                    "Your first two orders",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Fluttertoast.showToast(msg: '跳转到详情的页面');
                  },
                  child: Container(
                      width: 121,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'See details',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 12,
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
          Container(
            width: 190,
            height: 267,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 212, 219, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(30),
              ),
            ),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.icecream,
                  size: 70,
                ),
                Container(
                  width: 126,
                  height: 38,
                  margin: const EdgeInsets.only(
                    bottom: 14,
                    top: 14,
                  ),
                  child: const Text(
                    "Enjoy 25% Off (upto US \$7)",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                ),
                Container(
                  width: 126,
                  height: 14,
                  margin: const EdgeInsets.only(
                    bottom: 24,
                  ),
                  child: const Text(
                    "Your first two orders",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      height: 1,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Fluttertoast.showToast(msg: '跳转到详情的页面');
                  },
                  child: Container(
                      width: 121,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'See details',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.play_arrow_rounded,
                            color: Colors.white,
                            size: 12,
                          )
                        ],
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
