import 'package:sysventas/modelo/UnidadMedidaModelo.dart';
import 'package:sysventas/util/UrlApi.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'unidadmedida_api.g.dart';

@RestApi(baseUrl: UrlApi.urlApix)
abstract class UnidadmedidaApi{
  factory UnidadmedidaApi(Dio dio, {String baseUrl})=_UnidadmedidaApi;

  static UnidadmedidaApi create(){
    final dio=Dio();
    dio.interceptors.add(PrettyDioLogger());
    return UnidadmedidaApi(dio);
  }

  @GET("/unidadmedidas")
  Future<List<UnidadMedida>> getUnidadMedida(@Header("Authorization") String token);

}