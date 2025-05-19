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
      appBar: AppBar(title: Text('Ejemplo de Texto Simple')),
      body:
      Center(
        child: RichText(
          text: TextSpan(
            text: 'Este es un ',
            style: TextStyle(fontSize: 24, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: 'texto ',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
              TextSpan(
                text: 'rico ',
                style: TextStyle(fontStyle: FontStyle.italic, color: Colors.green),
              ),
              TextSpan(
                text: 'en estilos.',
                style: TextStyle(decoration: TextDecoration.underline, color: Colors.red),
              ),
            ],
          ),
        ),
      ),
    );
  }

}