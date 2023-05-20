import 'package:flutter/material.dart';

class PrimaryTest extends StatefulWidget {
  const PrimaryTest({Key? key}) : super(key: key);

  @override
  State<PrimaryTest> createState() => _PrimaryTestState();
}

class _PrimaryTestState extends State<PrimaryTest> {

  bool checkBoxValue1 = false;
  bool checkBoxValue2 = false;
  bool val = false;
  bool val2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
        title: Text('Изменить исходные данные'),
    backgroundColor: Colors.grey,
    ),
    body: SafeArea(
      child: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          Text('В какое время вы работаете?',
            style: TextStyle(fontSize: 18.0),),

          CheckboxListTile(
              title: Text('Днем'),
              value: checkBoxValue1,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val){
                setState(() {
                    checkBoxValue1 = val!;
                });
              }),

          CheckboxListTile(
              title: Text('Ночью'),
              value: checkBoxValue2,
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (val2){
                setState(() {
                  checkBoxValue2 = val2!;
                });
              }),

        ],
      ),
    ),
    );

  }
}
