import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart'; //подключаем класс home
import 'package:flutter_application_1/pages/primarytest.dart'; //подключаем класс primarytest

void main() => runApp(MaterialApp(
  initialRoute: '/', //начальная страница
  routes: {
    '/':(context) => Home(), //главная страница
    '/primary':(context) => PrimaryTest(),

  },
));





