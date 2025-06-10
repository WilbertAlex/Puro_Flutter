import 'package:sysventas/modelo/MarcaModelo.dart';
import 'package:sysventas/util/UrlApi.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'marca_api.g.dart';

@RestApi(baseUrl: UrlApi.urlApix)
abstract class MarcaApi{
  factory MarcaApi(Dio dio, {String baseUrl})=_MarcaApi;

  static MarcaApi create(){
    final dio=Dio();
    dio.interceptors.add(PrettyDioLogger());
    return MarcaApi(dio);
  }

  @GET("/marcas")
  Future<List<Marca>> getMarca(@Header("Authorization") String token);

}