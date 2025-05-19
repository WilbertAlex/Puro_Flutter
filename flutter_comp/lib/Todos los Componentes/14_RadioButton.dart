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
  int _selectedValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RadioButton')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ListTile(
            title: Text('Opción 1'),
            leading: Radio<int>(
              value: 1,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() { _selectedValue = value!; });
                print("Seleccionado: $_selectedValue");
              },
            ),
          ),
          ListTile(
            title: Text('Opción 2'),
            leading: Radio<int>(
              value: 2,
              groupValue: _selectedValue,
              onChanged: (int? value) {
                setState(() {_selectedValue = value!; });
                print("Seleccionado: $_selectedValue");
              },
            ),
          ),
        ],
      ),
    );
  }
}