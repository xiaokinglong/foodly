import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {},
          )
        ],
      ),
      body: ListView.builder(
        itemCount: 50,
        // itemExtent: 50.0,
        itemBuilder: (BuildContext context, int index) {
          // 卡片组件
          return Container(
            height: 307.0,
            padding: const EdgeInsets.fromLTRB(18, 14, 18, 14),
            child: Container(
                height: 279.0,
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
                      child: const Text("Carl's Jr. (1001 Veterans Blvd)"),
                    ),
                    Container(
                      child: const Text("\$\$ . Fast Food . Burger . Chicken"),
                    ),
                    Container(
                      child: Row(
                        children: [
                          RaisedButton(
                            onPressed: () {
                              print("onPressed");
                            },
                            onLongPress: () {
                              print("onLongPress");
                            },
                            child: Text("3.4 mi"),
                          ),
                          Text("button"),
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
                )),
          );
        },
      ),
    );
  }
}
