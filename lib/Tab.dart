// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'Home.dart';
import 'Setting.dart';

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int currentIndex = 0;
  List _pageList = [MyHomePage(), SettingPage()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Test App'),
        ),
        
        body: _pageList[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "首页",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label:"设置"),
          ],
        ),
      ),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}



