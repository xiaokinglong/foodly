import 'package:flutter/material.dart';
import 'package:foodly/components/Empty/index.dart';
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
            backgroundColor: Colors.white,
            bottom: TabBar(
              onTap: (int index) {},
              tabs: [
                Container(
                  height: 30,
                  child: const Text(
                    "Past Orders",
                    style: TextStyle(
                      fontSize: 13,
                      height: 2,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  child: const Text(
                    "Upcoming",
                    style: TextStyle(
                      fontSize: 13,
                      height: 2,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Empty(),
              // Text('精选'),
              Text('猜你喜欢'),
            ],
          ),
        ),
      ),
    );
  }
}
