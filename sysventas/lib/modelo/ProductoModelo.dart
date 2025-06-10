import 'package:sysventas/modelo/CategoriaModelo.dart';
import 'package:sysventas/modelo/MarcaModelo.dart';
import 'package:sysventas/modelo/UnidadMedidaModelo.dart';

class ProductoResp {
  ProductoResp({
    required this.idProducto,
    required this.nombre,
    required this.pu,
    required this.puOld,
    required this.utilidad,
    required this.stock,
    required this.stockOld,
    required this.categoria,
    required this.marca,
    required this.unidadMedida,
  });

  final int idProducto;
  final String nombre;
  final double pu;
  final double puOld;
  final double utilidad;
  final double stock;
  final double stockOld;
  final Categoria categoria;
  final Marca marca;
  final UnidadMedida unidadMedida;

  factory ProductoResp.fromJson(Map<String, dynamic> json){
    return ProductoResp(
      idProducto: json["idProducto"],
      nombre: json["nombre"],
      pu: json["pu"],
      puOld: json["puOld"],
      utilidad: json["utilidad"],
      stock: json["stock"],
      stockOld: json["stockOld"],
      categoria: json["categoria"] == null ? Categoria.crear() : Categoria.fromJson(json["categoria"]),
      marca: json["marca"] == null ? Marca.crear() : Marca.fromJson(json["marca"]),
      unidadMedida: json["unidadMedida"] == null ? UnidadMedida.crear() : UnidadMedida.fromJson(json["unidadMedida"]),
    );
  }

  Map<String, dynamic> toJson() => {
    "idProducto": idProducto,
    "nombre": nombre,
    "pu": pu,
    "puOld": puOld,
    "utilidad": utilidad,
    "stock": stock,
    "stockOld": stockOld,
    "categoria": categoria?.toJson(),
    "marca": marca?.toJson(),
    "unidadMedida": unidadMedida?.toJson(),
  };

}

class ProductoDto {
  ProductoDto({
    required this.idProducto,
    required this.nombre,
    required this.pu,
    required this.puOld,
    required this.utilidad,
    required this.stock,
    required this.stockOld,
    required this.categoria,
    required this.marca,
    required this.unidadMedida,
  });

  late final int idProducto;
  late final String nombre;
  late final double pu;
  late final double puOld;
  late final double utilidad;
  late final double stock;
  late final double stockOld;
  late final int categoria;
  late final int marca;
  late final int unidadMedida;

  ProductoDto.unlaunched();

  factory ProductoDto.fromJson(Map<String, dynamic> json){
    return ProductoDto(
      idProducto: json["idProducto"],
      nombre: json["nombre"],
      pu: json["pu"],
      puOld: json["puOld"],
      utilidad: json["utilidad"],
      stock: json["stock"],
      stockOld: json["stockOld"],
      categoria: json["categoria"],
      marca: json["marca"],
      unidadMedida: json["unidadMedida"],
    );
  }

  Map<String, dynamic> toJson() => {
    "idProducto": idProducto,
    "nombre": nombre,
    "pu": pu,
    "puOld": puOld,
    "utilidad": utilidad,
    "stock": stock,
    "stockOld": stockOld,
    "categoria": categoria,
    "marca": marca,
    "unidadMedida": unidadMedida,
  };

}
