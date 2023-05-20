import 'package:flutter/material.dart';

class SecondaryTest extends StatefulWidget {
  const SecondaryTest({Key? key}) : super(key: key);

  @override
  State<SecondaryTest> createState() => _SecondaryTestState();
}

class _SecondaryTestState extends State<SecondaryTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Данные о нештатной ситуации'),
        backgroundColor: Colors.grey,
      ),
      body: SafeArea(
        child: ListView(
            children: [

              ]
        ),

      ),
    );

  }
}
