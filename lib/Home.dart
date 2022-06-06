// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, unnecessary_new, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
            image: NetworkImage(
              'https://img-qn-1.51miz.com/preview/element/00/01/26/04/E-1260421-A9D3942A.jpg!/quality/90/unsharp/true/compress/true/format/jpg/fh/400'),
          fit: BoxFit.cover,
        )),
        child: Scaffold(
            backgroundColor: Colors.transparent, //把scaffold的背景色改成透明
            appBar: AppBar(
              backgroundColor: Colors.transparent, //把appbar的背景色改成透明
              // elevation: 0,//appbar的阴影
              title: Text('计数器'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('You have pushed the button this many times:',
                      style: TextStyle(
                        fontSize: 30,
                        height: 1.5,
                      )),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  FlatButton.icon(
                    icon:Icon(Icons.send),
                    label:Text("open new page"),
                    textColor: Colors.blue,
                    onPressed: () {
                      //导航到新路由
                      Navigator.push(context,
                          new MaterialPageRoute(builder: (context) {
                        return new SingleChildScrollViewTest();
                      }));
                    },
                  ),
                  
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ))); // This trailing comma makes auto-formatting nicer for build methods.);
  }
}

class SingleChildScrollViewTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String str = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    // 显示进度条
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
            image: NetworkImage(
              'https://img-qn-1.51miz.com/preview/element/00/01/26/04/E-1260421-A9D3942A.jpg!/quality/90/unsharp/true/compress/true/format/jpg/fh/400'),
          fit: BoxFit.cover,
        )),
        child:Scaffold(
          backgroundColor: Colors.transparent, //把scaffold的背景色改成透明
            appBar: AppBar(
              backgroundColor: Colors.transparent, //把appbar的背景色改成透明
              // elevation: 0,//appbar的阴影
              title: Text('滚动条'),
            ),
          body: Scrollbar(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Center(
                child: Column(
                  // 动态创建一个List<Widget>
                  children: str.split('')
                  // 每一个字母都用一个Text显示，字体为原来的2倍
                      .map((c) => Text(c, textScaleFactor: 2.0,))
                      .toList(),
                ),
              ),
            ),
          )));
  }
}
