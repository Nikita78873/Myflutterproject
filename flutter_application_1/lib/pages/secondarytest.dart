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
        title: Text('3 страница'),
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(
            children: [
              Column(
                children: [Text('3 страница'),],
              ),]
        ),

      ),
    );

  }
}
