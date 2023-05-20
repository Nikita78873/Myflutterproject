import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home.dart'; //подключаем класс Home
import 'package:flutter_application_1/pages/primarytest.dart';//подключаем класс PrimaryTest
import 'package:flutter_application_1/pages/secondarytest.dart';//подключаем класс SecondaryTest


void main() => runApp(MaterialApp(

  initialRoute: '/', //начальная страница
  routes: {
    '/':(context) => Home(), //главная страница
    '/primary':(context) => PrimaryTest(),
    '/secondary':(context) => SecondaryTest(),

  },
),
);





