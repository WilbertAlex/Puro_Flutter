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
      debugShowCheckedModeBanner: false,
      title: 'ListView Scroll',
      home: Scaffold(
        appBar: AppBar(title: Text('ListView Scroll')),
        body: ListView.builder(
          padding: const EdgeInsets.all(8.0),
          itemCount: 50, // Número de ítems
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Elemento $index'),
            );
          },
        ),
      ),
    );
  }

}