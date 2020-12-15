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
        child: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Column(
              children: [
                Expanded(
                  child: Image.network(
                      "https://pbs.twimg.com/profile_images/1254056963861671938/yX80o4T__400x400.jpg"
                  ),
                ),
                Text("ノダアツ $index"),
              ],
            );
          }),
        ),
      ),
    );
  }
}


