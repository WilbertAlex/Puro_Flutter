import 'package:dio/dio.dart';
import 'package:sysventas/apis/unidadmedida_api.dart';
import 'package:sysventas/modelo/UnidadMedidaModelo.dart';
import 'package:sysventas/util/TokenUtil.dart';

class UnidadMedidaRepository {
  UnidadmedidaApi? unidadmedidaApi;

  UnidadMedidaRepository() {
    Dio _dio = Dio();
    _dio.options.headers["Content-Type"] = "application/json";
    unidadmedidaApi = UnidadmedidaApi(_dio);
  }

  Future<List<UnidadMedida>> getEntidad() async {
    return await unidadmedidaApi!.getUnidadMedida(TokenUtil.TOKEN).then((
        value) => value);
  }
}