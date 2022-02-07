import 'package:flutter/material.dart';

class Layout_Page extends StatefulWidget {
  Layout_Page({Key? key}) : super(key: key);

  @override
  State<Layout_Page> createState() => _Layout_PageState();
}

class _Layout_PageState extends State<Layout_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cabin),
            label: 'cabin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'cabin',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplane_ticket_sharp),
            label: 'cabin',
          ),
        ],
      ),
    );
  }
}
