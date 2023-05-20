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
        backgroundColor: Colors.blueGrey,
      ),

      //тело приложения размещено в безопасной зоне.
      //не затрагивает другие элементы
      body: SafeArea(
        //строка (чтобы занять всё свободное пространство справа налево)
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [
            Text('Введите данные о подразделении, месте несения службы и т.д.',
              style: TextStyle(fontSize: 20.0),),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/primary');
              },
              child: Text('Ввод исходных данных',),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            ),

            Text('Введите данные о нештатной ситуации',
              style: TextStyle(fontSize: 20.0),),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondary');
              },
              child: Text('Нештатная ситуация',),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
            ),
          ],
        )
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, '/secondary');

          // setState(() {
          //   _count++;
          // });
        },
        child: Text('+', style: TextStyle(fontSize: 20.0),),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
