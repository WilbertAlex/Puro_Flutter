class Marca {
  Marca({
    required this.idMarca,
    required this.nombre,
  });

  late final int idMarca;
  late final String nombre;
  Marca.crear():idMarca=0, nombre="";
  factory Marca.fromJson(Map<String, dynamic> json){
    return Marca(
      idMarca: json["idMarca"],
      nombre: json["nombre"],
    );
  }

  Map<String, dynamic> toJson() => {
    "idMarca": idMarca,
    "nombre": nombre,
  };

}