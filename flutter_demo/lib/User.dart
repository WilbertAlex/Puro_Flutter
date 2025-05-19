import 'package:json_annotation/json_annotation.dart';
@JsonSerializable()
class User {
  late int iD;
  late final String nOMBRE;
  late final String aPELLIDOS;
  late final int dNI;
  late final int iDPERFIL;
  late final String nOMBREPERFIL;
  late final String eSTADOPERFIL;
  User(
      {required this.iD,
        required this.nOMBRE,
        required this.aPELLIDOS,
        required this.dNI,
        required this.iDPERFIL,
        required this.nOMBREPERFIL,
        required this.eSTADOPERFIL});
  User.fromJson(Map<String, dynamic> json){
    iD = json['ID'];
    nOMBRE = json['NOMBRE'];
    aPELLIDOS = json['APELLIDOS'];
    dNI: json['DNI'];
    iDPERFIL=json['ID_PERFIL'];
    nOMBREPERFIL=json['NOMBRE_PERFIL'];
    eSTADOPERFIL=json['ESTADO_PERFIL'];
  }
  factory User.fromJsonModelo(Map<String, dynamic> json) {
    return User(
      iD: json['ID'],
      nOMBRE: json['NOMBRE'],
      aPELLIDOS: json['APELLIDOS'],
      dNI: json['DNI'],
      iDPERFIL: json['ID_PERFIL'],
      nOMBREPERFIL: json['NOMBRE_PERFIL'],
      eSTADOPERFIL: json['ESTADO_PERFIL'],
    );
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['NOMBRE'] = this.nOMBRE;
    data['APELLIDOS'] = this.aPELLIDOS;
    data['DNI'] = this.dNI;
    data['ID_PERFIL'] = this.iDPERFIL;
    data['NOMBRE_PERFIL'] = this.nOMBREPERFIL;
    data['ESTADO_PERFIL'] = this.eSTADOPERFIL;
    return data;
  }
}
