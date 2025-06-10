class UnidadMedida {
  UnidadMedida({
    required this.idUnidad,
    required this.nombreMedida,
  });

  late final int idUnidad;
  late final String nombreMedida;
  UnidadMedida.crear():idUnidad=0, nombreMedida="";
  factory UnidadMedida.fromJson(Map<String, dynamic> json){
    return UnidadMedida(
      idUnidad: json["idUnidad"],
      nombreMedida: json["nombreMedida"],
    );
  }

  Map<String, dynamic> toJson() => {
    "idUnidad": idUnidad,
    "nombreMedida": nombreMedida,
  };

}
