import 'package:flutter/material.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // кнопка "настройки"
          ListTile(
              onTap: () {},
              title: Text('Настройки'),
              leading: Icon(Icons.settings),
          ),

          //кнопка "о программе" - ссылка на страницу с документацией пользователя
          ListTile(
            onTap: () {},
            title: Text('О приложении'),
            leading: Icon(Icons.info_outline),
          ),
        ],
      ),
    );
  }
}
