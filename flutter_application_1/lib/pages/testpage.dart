import 'package:flutter/material.dart';

import 'dart:convert';

import 'dart:async';

import 'package:flutter/services.dart';

import 'firstpage.dart';

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      home: Scaffold(
        body: ReadJson(),
      ),
    );
  }
}

class ReadJson extends StatefulWidget {
  const ReadJson({Key? key}) : super(key: key);
 
  @override
  _ReadJsonState createState() => _ReadJsonState();
}
 
class _ReadJsonState extends State<ReadJson> {
  PageController _pageController = PageController();
  List _items = [];
 
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('assets/bd.json');
    final data = await json.decode(response);
    setState(() {
      _items = data["encoding_attribute"];
    });
  }
 
  int pageChanged = 0;
  bool checkedValue1 = false;
  bool checkedValue2 = false;

  @override
  Widget build(BuildContext context) {
    readJson();
    return PageView.builder(
      physics: const NeverScrollableScrollPhysics(),
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          pageChanged = index;
        });
      },
      itemCount: _items.length,
      itemBuilder: (context, position){
        if (position+1 == _items.length) {
          return Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Expanded(
                  flex: 1,
                  child: TextButton(
                    child: const Icon(
                      color: Colors.black,
                      Icons.arrow_back
                    ),
                    onPressed: (){
                      _pageController.animateToPage(--pageChanged, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                    }
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    "Вопрос " + (position + 1).toString() + " из " + _items.length.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18
                    ),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstPage(activebut: false)),
                      );
                    },
                    child: const Icon(
                      color: Colors.black,
                      Icons.close
                    )
                  )
                )
              ]
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Text(
                _items[position]["text_of_sign"],
                style: const TextStyle(
                  fontSize: 20
                ),
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child:SizedBox(
                height:200,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          CheckboxListTile(
                            title: Text(_items[position]["n1"]),
                            value: checkedValue1,
                            onChanged: (value) {
                              setState(() {
                                checkedValue1 = value!;
                              });
                            },
                          ),
                          Divider(),
                          CheckboxListTile(
                            title: Text(_items[position]["n2"]),
                            value: checkedValue2,
                            onChanged: (value) {
                              setState(() {
                                checkedValue2 = value!;
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  }
                )
              )
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const FirstPage(activebut: true)),
                    );
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(350, 70)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text(
                    'Закончить тестирование',
                    style: TextStyle(
                      fontSize: 24,
                    )
                  ),
                )
              )
            )
            ]
          )
        );
        } else {
        return Container(
          margin: EdgeInsets.only(top: 30),
          child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Expanded(
                  flex: 1,
                  child: TextButton(
                    child: const Icon(
                      color: Colors.black,
                      Icons.arrow_back
                    ),
                    onPressed: (){
                      _pageController.animateToPage(--pageChanged, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                    }
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Text(
                    "Вопрос " + (position + 1).toString() + " из " + _items.length.toString(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18
                    ),
                  )
                ),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FirstPage(activebut: false)),
                      );
                    },
                    child: const Icon(
                      color: Colors.black,
                      Icons.close
                    )
                  )
                )
              ]
            ),
            Container(
              margin: EdgeInsets.only(top: 50, left: 20, right: 20),
              child: Text(
                _items[position]["text_of_sign"],
                style: const TextStyle(
                  fontSize: 20
                ),
              )
            ),
            Container(
              margin: const EdgeInsets.only(top: 50),
              child:SizedBox(
                height:200,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      child: Column(
                        children: [
                          CheckboxListTile(
                            title: Text(_items[position]["n1"]),
                            value: checkedValue1,
                            onChanged: (value) {
                              setState(() {
                                checkedValue1 = value!;
                              });
                            },
                          ),
                          Divider(),
                          CheckboxListTile(
                            title: Text(_items[position]["n2"]),
                            value: checkedValue2,
                            onChanged: (value) {
                              setState(() {
                                checkedValue2 = value!;
                              });
                            },
                          ),
                          Divider(),
                        ],
                      ),
                    );
                  }
                )
              )
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: (){
                    _pageController.animateToPage(++pageChanged, duration: Duration(milliseconds: 250), curve: Curves.bounceInOut);
                  },
                  style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(const Size(350, 70)),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  ),
                  child: const Text(
                    'Следующий вопрос',
                    style: TextStyle(
                      fontSize: 24,
                    )
                  ),
                )
              )
            )
            ]
          )
        );
        }
      }
    );
  }
}
