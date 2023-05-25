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
        backgroundColor: Colors.grey,
      ),

      //тело приложения размещено в безопасной зоне.
      //не затрагивает другие элементы
      body: SafeArea(
        //строка (чтобы занять всё свободное пространство справа налево)
        child: ListView(
          padding: EdgeInsets.all(15.0),
          children: [
            Text('Введите данные о подразделении, месте несения службы и т.д.',
              style: TextStyle(fontSize: 18.0),),

            Divider(),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/primary');
              },
              child: Text('Ввод исходных данных',
                style: TextStyle(fontSize: 18.0),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  fixedSize: Size.fromHeight(50.0)),
            ),

            Divider(),

            Text('Введите данные о нештатной ситуации',
              style: TextStyle(fontSize: 18.0),),

            Divider(),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondary');
              },
              child: Text('Нештатная ситуация',
                style: TextStyle(fontSize: 18.0),),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey,
                  fixedSize: Size.fromHeight(50.0))
            ),
          ],
        ),
      ),
    );
  }
}
