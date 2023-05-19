import 'package:flutter/material.dart';

class PrimaryTest extends StatefulWidget {
  const PrimaryTest({Key? key}) : super(key: key);

  @override
  State<PrimaryTest> createState() => _PrimaryTestState();
}

class _PrimaryTestState extends State<PrimaryTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //малиновая тема для приложения
        //backgroundColor: Colors.redAccent,
        appBar: AppBar(
        title: Text('Главная'),
    backgroundColor: Colors.black45,
    ),
    body: SafeArea(
      child: Row(
          children: [
          Column(
            children: [Text('Вторая страница'),],
          ),]
      ),

    ),
    );

  }
}
