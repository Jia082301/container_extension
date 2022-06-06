// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, library_private_types_in_public_api, prefer_const_constructors, no_logic_in_create_state

import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({Key? key}) : super(key: key);

  @override
  _ThemeTestRouteState createState() => _ThemeTestRouteState();
}

class _ThemeTestRouteState extends State<SettingPage> {
  var _themeColor = Colors.teal; //当前路由主题色

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    return Theme(
      data: ThemeData(
          primarySwatch: _themeColor, //用于导航栏、FloatingActionButton的背景色等
          iconTheme: IconThemeData(color: _themeColor) //用于Icon颜色
      ),
      child: Scaffold(
        appBar: AppBar(title: Text("主题测试")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.favorite),
                  Icon(Icons.airport_shuttle),
                ]
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () =>  //切换主题
                setState(() =>
                _themeColor =
                _themeColor == Colors.teal ? Colors.purple : Colors.teal
                ),
            child: Icon(Icons.palette)
        ),
      ),
    );
  }
}
