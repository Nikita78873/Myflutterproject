import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text('Вопрос 1 из 12'),
    backgroundColor: Colors.grey,
    ),
    body: SafeArea(
    child: ListView(
    padding: EdgeInsets.all(10.0),
    children: [

    ]
    ),
    ),
    );
  }
}
