import 'package:first_app/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final items = ["ノダアツ1", "ノダアツ2", "ノダアツ3", ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("ノダアツのflutter学習"),
        actions: <Widget> [
          Icon(Icons.add),
          Icon(Icons.share)
        ],

      ),
      body: Container(
        width: double.infinity,
        child: ListView(
          // This next line does the trick.
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              height: 160,
              color: Colors.red,
            ),
            Container(
              width: 160.0,
              height: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              height: 160,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              height: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              height: 160,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}
