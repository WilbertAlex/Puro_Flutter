import 'package:dio/dio.dart';
import 'package:flutter_demo/User.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'usuario_api.g.dart';

@RestApi(baseUrl: "https://script.googleusercontent.com")

abstract class UsuarioApi {

  factory UsuarioApi(Dio dio, {String baseUrl}) = _UsuarioApi;
  static UsuarioApi create() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    return UsuarioApi(dio);
  }

  @GET("/macros/s/AKfycbyMU0Hkq75uOCOezw1bXItXt89ShxrbxSqbvjrjp4pqdOabWzQA6EvrrFKOMMGtwNjD/exec") //davidmpx@upeu.edu.pe //D123456
  Future<List<User>> listar();
}