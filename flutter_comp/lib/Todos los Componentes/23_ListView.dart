import 'package:flutter/material.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( debugShowCheckedModeBanner: false, title: 'Flutter Demo',
      theme: ThemeData( primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('ListView')),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Container(color: Colors.red, height: 100),
            Container(color: Colors.green, height: 100),
            Container(color: Colors.blue, height: 100),
            Container(color: Colors.orange, height: 100),
            Container(color: Colors.purple, height: 100),
          ],
        ),
      ),
    );
  }
}