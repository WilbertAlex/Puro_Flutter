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
    return Scaffold(
      appBar: AppBar(title: Text('Expanded Widget')),
      body: Row(
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              child: Text('Elemento 1', textAlign: TextAlign.center),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: Text('Elemento 2', textAlign: TextAlign.center),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: Text('Elemento 3', textAlign: TextAlign.center),
            ),
          ),
        ],
      ),
    );
  }

}