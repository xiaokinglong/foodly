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
    return const Scaffold(
      // appBar: const BaseHeader(),
      body: Center(
        child: Text('histor'),
      ),
    );
  }
}
