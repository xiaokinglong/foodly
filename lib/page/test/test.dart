import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("测试"),
      ),
      body: FutureBuilder(
        future: Future.delayed(
          Duration(seconds: 3),
          () {
            return '我是测试的数据';
          },
        ),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
            return Text(snapshot.data.toString());
          }
          return Text('loading');
        },
      ),
      drawer: const Drawer(
        child: Text('this'),
      ),
    );
  }
}
