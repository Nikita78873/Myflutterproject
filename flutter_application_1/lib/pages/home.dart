import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/drawer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();

}


class _HomeState extends State<Home> {

  int _count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      //малиновая тема для приложения
      //backgroundColor: Colors.redAccent,
      //шапка приложения
      appBar: AppBar(
        title: Text('Главная'),
        backgroundColor: Colors.black45,
        actions: [
          // кнопка настроек
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.settings),),
        ],
      ),


      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.all(5.0)),

                Text('Введите данные о подразделении,\nместе несения службы и т.д.',
                  style: TextStyle(fontSize: 20.0),),

                Padding(padding: EdgeInsets.only(top: 10.0)),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/primary');
                  },
                  child: Text('Ввод исходных данных',),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black45),
                ),

                Padding(padding: EdgeInsets.only(top: 10.0)),

                Text('Введите данные о нештатной\nситуации',
                  style: TextStyle(fontSize: 20.0),),

                Padding(padding: EdgeInsets.only(top: 10.0)),

                ElevatedButton(
                  onPressed: () {},
                  child: Text('Нештатная ситуация',),
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black45),
                ),

                Padding(padding: EdgeInsets.only(top: 10.0)),
                /*       Text('История: $_count записей',
                  style: TextStyle(fontSize: 20.0),),*/
              ],
            )
          ],
        ),
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Text('+', style: TextStyle(fontSize: 20.0),),
        backgroundColor: Colors.black45,
      ),
    );
  }
}
