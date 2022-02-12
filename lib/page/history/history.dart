import 'package:flutter/material.dart';
import 'package:foodly/components/baseHeader/index.dart';

class HistoryPage extends StatefulWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('123'),
            bottom: TabBar(
              onTap: (int index) {
                print('Selected......$index');
              },
              tabs: [
                Container(
                  child: const Text("Past Orders"),
                ),
                Container(
                  child: const Text("Upcoming"),
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Text('精选'),
              Text('猜你喜欢'),
            ],
          ),
        ),
      ),
    );
  }
}
