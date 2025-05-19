import 'package:dio/dio.dart';
import 'package:flutter_demo/models/lugar_response.dart';
import 'package:retrofit/retrofit.dart';

part 'lugar_api_client.g.dart';

@RestApi()
abstract class LugarApiClient {
  factory LugarApiClient(Dio dio, {String baseUrl}) = _LugarApiClient;

  @GET("/admin/lugar")
  Future<List<LugarResponse>> getLugares();

  @GET("/admin/lugar/{idLugar}")
  Future<LugarResponse> getLugarById(@Path("idLugar") int idLugar);

  @POST("/admin/lugar")
  @MultiPart()
  Future<LugarResponse> postLugar(
      @Part(name: "lugar") String lugarJson,
      @Part(name: "file") MultipartFile? file,
      );

  @PUT("/admin/lugar/{idLugar}")
  @MultiPart()
  Future<LugarResponse> putLugar(
      @Path("idLugar") int idLugar,
      @Part(name: "lugar") String lugarJson,
      @Part(name: "file") MultipartFile? file,
      );

  @DELETE("/admin/lugar/{idLugar}")
  Future<void> deleteLugar(@Path("idLugar") int idLugar);
}