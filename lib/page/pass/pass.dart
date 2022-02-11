import 'package:flutter/material.dart';

class PassPage extends StatefulWidget {
  const PassPage({Key? key}) : super(key: key);

  @override
  _PassPageState createState() => _PassPageState();
}

class _PassPageState extends State<PassPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('pass'),
      ),
    );
  }
}
