import 'package:dio/dio.dart';
import 'package:sysventas/apis/marca_api.dart';
import 'package:sysventas/modelo/MarcaModelo.dart';
import 'package:sysventas/util/TokenUtil.dart';

class MarcaRepository {
  MarcaApi? marcaApi;

  MarcaRepository() {
    Dio _dio = Dio();
    _dio.options.headers["Content-Type"] = "application/json";
    marcaApi = MarcaApi(_dio);
  }

  Future<List<Marca>> getEntidad() async {
    return await marcaApi!.getMarca(TokenUtil.TOKEN).then((
        value) => value);
  }
}