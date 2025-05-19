import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
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
  final List<Map<String, String>> _dropdownItems = [
    {'label': 'Opción A', 'value': '1'},
    {'label': 'Opción B', 'value': '2'},
    {'label': 'Opción C', 'value': '3'},
  ];
  String? _selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DropdownButton con Value y Label distintos')),
      body: Center(
        child: Column(
          children: [
            DropdownButton<String>(
              value: _selectedValue, // El valor seleccionado
              hint: Text('Seleccione una opción'), // Texto inicial
              items:
              _dropdownItems.map((item) {
                return DropdownMenuItem<String>(
                  value: item['value'], // Asigna el valor del Map
                  child: Text(item['label']!), // Muestra la etiqueta
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedValue = newValue!;
                });
                print(
                  'Valor seleccionado: $_selectedValue',
                ); // Imprime el valor
              },
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    spreadRadius: 5,
                  ),
                ],
              ),

              child: Text(
                'Hola, Soy un Container',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
