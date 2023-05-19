import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/drawer.dart';

//класс Home() главной начальной страницы
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

//отслеживаем состояния класса Home()
class _HomeState extends State<Home> {

  // int _count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // подключаем MainDrawer() класс бокового меню
      drawer: MainDrawer(),


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

      //тело приложения размещено в безопасной зоне.
      //не затрагивает другие элементы
      body: SafeArea(
        //строка (чтобы занять всё свободное пространство справа налево)
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
                  onPressed: () {
                    Navigator.pushNamed(context, '/secondary');
                  },
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
          Navigator.pushNamed(context, '/secondary');

          // setState(() {
          //   _count++;
          // });
        },
        child: Text('+', style: TextStyle(fontSize: 20.0),),
        backgroundColor: Colors.black45,
      ),
    );
  }
}
