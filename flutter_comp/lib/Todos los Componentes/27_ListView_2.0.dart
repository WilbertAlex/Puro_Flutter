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
      appBar: AppBar(title: Text('Lista de Usuarios')),
      body: ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (context, index) {
          final usuario = usuarios[index];
          return ListTile(
            title: Text(usuario.nombre),
            subtitle: Text('Edad: ${usuario.edad}'),
          );
        },
      ),
    );
  }
}