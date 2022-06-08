// ignore_for_file: unused_import, library_private_types_in_public_api, prefer_final_fields, prefer_const_constructors, prefer_const_constructors_in_immutables, sort_child_properties_last, prefer_const_literals_to_create_immutables

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
        
        drawer: Drawer(
          child: Column(
              children: <Widget>[
                  Row(children:<Widget>[
                      Expanded(
                          // 固定格式的抽屉头
                          child: UserAccountsDrawerHeader(
                          // 账号名称
                          accountName: Text('21:57'),
                          // 账号邮箱
                          accountEmail: Text("2879112607@qq.com"),
                          // 当前账号头像
                          currentAccountPicture: CircleAvatar(
                                backgroundImage: NetworkImage("http://mms1.baidu.com/it/u=671140197,3929356303&fm=253&app=120&f=JPEG&fmt=auto&q=75?w=500&h=500"),
                          ),
                decoration: BoxDecoration(color: Colors.blue
                    )))],),
              ListTile(
                title: Text('我的消息',
                style: TextStyle(color: Colors.green,
                fontSize: 20),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('关于',
                style: TextStyle(color: Colors.green,
                fontSize: 20),),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
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



