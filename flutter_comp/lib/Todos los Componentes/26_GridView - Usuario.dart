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

final List<Usuario> usuarios = [
  Usuario('Juan', 25),
  Usuario('Ana', 30),
  Usuario('Pedro', 28),
  Usuario('María', 22),
  Usuario('Luis', 35),
  Usuario('Sofía', 27),
  Usuario('Javier', 33),
  Usuario('Lucía', 29),
  Usuario('Carlos', 31),
];
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView de Usuarios')),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Número de columnas
          childAspectRatio: 1, // Relación de aspecto de los elementos
        ),
        itemCount: usuarios.length, // Número total de usuarios
        itemBuilder: (context, index) {
          final usuario = usuarios[index]; // Obtiene el usuario correspondiente
          return Container(
            margin: EdgeInsets.all(8.0), // Espacio entre celdas
            color: Colors.blueAccent,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    usuario.nombre,
                    style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Edad: ${usuario.edad}',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

}