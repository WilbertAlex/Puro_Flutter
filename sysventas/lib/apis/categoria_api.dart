import 'package:sysventas/modelo/CategoriaModelo.dart';
import 'package:sysventas/util/UrlApi.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'categoria_api.g.dart';

@RestApi(baseUrl: UrlApi.urlApix)
abstract class CategoriaApi{
  factory CategoriaApi(Dio dio, {String baseUrl})=_CategoriaApi;

  static CategoriaApi create(){
    final dio=Dio();
    dio.interceptors.add(PrettyDioLogger());
    return CategoriaApi(dio);
  }

  @GET("/categorias")
  Future<List<Categoria>> getCategoria(@Header("Authorization") String token);

}