void main() {
  final nombre = 'Fernando';
  saludar(nombre);
  saludar(nombre, "Prueba");
  saludar2(nombre: nombre, mensaje: "Saludos");
  saludar2(mensaje: "Saludos" , nombre:nombre);
}
void saludar(String nombre, [String mensaje = 'Hola'])
{
  print('$mensaje $nombre');
}
void saludar2({
  required String nombre,
  required String mensaje,
}) {
  print('$mensaje $nombre');
}
