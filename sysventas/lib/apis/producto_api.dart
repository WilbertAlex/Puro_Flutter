
import 'package:dio/dio.dart';
import 'package:sysventas/util/UrlApi.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';
import 'package:sysventas/modelo/MessageModelo.dart';
import 'package:sysventas/modelo/ProductoModelo.dart';

part 'producto_api.g.dart';

@RestApi(baseUrl: UrlApi.urlApix)
abstract class ProductoApi{
  factory ProductoApi(Dio dio, {String baseUrl})=_ProductoApi;

  static ProductoApi create(){
    final dio=Dio();
    dio.interceptors.add(PrettyDioLogger());
    return ProductoApi(dio);
  }

  @GET("/productos")
  Future<List<ProductoResp>> getProducto(@Header("Authorization") String token);

  @POST("/productos")
  Future<Message> crearProducto(@Header("Authorization") String token, @Body() ProductoDto producto);

  @GET("/productos/{id}")
  Future<ProductoResp> findProducto(@Header("Authorization") String token, @Path("id") int id);

  @DELETE("/productos/{id}")
  Future<Message> deleteProducto(@Header("Authorization") String token, @Path("id") int id );

  @PUT("/productos/{id}")
  Future<ProductoResp> updateProducto(@Header("Authorization") String token, @Path("id") int id, @Body() ProductoDto producto);
}