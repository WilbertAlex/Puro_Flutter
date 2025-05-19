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
      appBar: AppBar(title: Text('Stack')),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.blueAccent,
          ),
          Positioned(
            top: 50,
            left: 50,
            child: Container(
              width: 100,height: 100,color: Colors.red,
            ),
          ),
          Positioned(
            bottom: 50,
            right: 50,
            child: Container(
              width: 100, height: 100, color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }

}