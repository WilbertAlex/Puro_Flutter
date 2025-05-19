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
class Usuario {
  final String nombre;
  final int edad;
  Usuario(this.nombre, this.edad);
}
Future<List<Usuario>> _fetchUsuarios() async {
  await Future.delayed(Duration(seconds: 2));
  return [
    Usuario('Juan', 25), Usuario('Ana', 30),
    Usuario('Pedro', 28), Usuario('María', 22),
    Usuario('Luis', 35),
  ];
}


class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tabla de Usuarios')),
      body: FutureBuilder<List<Usuario>>(
        future: _fetchUsuarios(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); // Cargando
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}')); // Manejo de errores
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('No hay usuarios disponibles')); // Sin datos
          }
          final usuarios = snapshot.data!;
          return SingleChildScrollView(
            child: DataTable(
              columns: [
                DataColumn(label: Text('Nombre')),
                DataColumn(label: Text('Edad')),
              ],
              rows: usuarios.map( (usuario) => DataRow(
                cells: [
                  DataCell(Text(usuario.nombre)),
                  DataCell(Text(usuario.edad.toString())),
                ],
              ),
              ).toList(),
            ),
          );
        },
      ),
    );
  }

}