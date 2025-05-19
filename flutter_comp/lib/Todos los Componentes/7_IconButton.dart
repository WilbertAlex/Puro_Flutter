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
      appBar: AppBar(title: Text('IconButton')),
      body: Center(
        child: IconButton(
          icon: Icon(Icons.thumb_up),
          color: Colors.blue,
          iconSize: 40.0,
          onPressed: () {
            print('IconButton presionado');
          },
        ),
      ),
    );
  }

}