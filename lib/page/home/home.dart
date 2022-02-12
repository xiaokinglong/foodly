import 'package:flutter/material.dart';
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
            title: Text("Home"),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (content, index) {
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
