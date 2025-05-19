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

class _MyHomePageState extends State<MyHomePage> {
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de Usuarios")),
      body: ListView.builder(
        padding: EdgeInsets.all(16.0),
        itemCount: usuarios.length, // Número total de usuarios
        itemBuilder: (context, index) {
          final usuario = usuarios[index]; // Obtiene el usuario correspondiente
          return Container(
            margin: EdgeInsets.only(bottom: 16.0), // Espacio entre elementos
            color: Colors.blueAccent,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start, // Alinea el texto a la izquierda
                children: [
                  Text( usuario.nombre,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text( 'Edad: ${usuario.edad}',
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