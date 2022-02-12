import 'package:flutter/material.dart';
import 'package:foodly/page/history/history.dart';
import 'package:foodly/page/home/home.dart';
import 'package:foodly/page/pass/pass.dart';
import 'package:foodly/page/search/search.dart';
import 'package:foodly/page/user/user.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({Key? key}) : super(key: key);

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  int _currentIndex = 3;

  final bodyList = [
    const HomePage(),
    const SearchPage(),
    const HistoryPage(),
    const UserPage(),
    const PassPage()
  ];
  var currentBody;

  @override
  void initState() {
    super.initState();
    // _currentIndex = 0;
    currentBody = bodyList[_currentIndex];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentBody,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
            currentBody = bodyList[_currentIndex];
          });
        },
        selectedItemColor: Colors.black, // 选中时的样式
        unselectedItemColor: const Color.fromRGBO(204, 204, 204, 1), // 未选时的颜色
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_sharp),
            label: '',
          ),
        ],
      ),
    );
  }
}
