import 'package:dio/dio.dart';
import 'package:sysventas/apis/producto_api.dart';
import 'package:sysventas/modelo/MessageModelo.dart';
import 'package:sysventas/modelo/ProductoModelo.dart';
import 'package:sysventas/util/TokenUtil.dart';

class ProductoRepository{
  ProductoApi? productoApi;

  ProductoRepository(){
    Dio _dio=Dio();
    _dio.options.headers["Content-Type"]="application/json";
    productoApi=ProductoApi(_dio);
  }

  Future<List<ProductoResp>> getEntidad() async{
    return await productoApi!.getProducto(TokenUtil.TOKEN).then((value)=>value);
  }

  Future<Message> deleteEntidad(int id) async{
    return await productoApi!.deleteProducto(TokenUtil.TOKEN, id);
  }

  Future<ProductoResp> updateEntidad(int id, ProductoDto producto) async{
    return await productoApi!.updateProducto(TokenUtil.TOKEN, id, producto);
  }

  Future<Message> createEntidad(ProductoDto producto) async{
    return await productoApi!.crearProducto(TokenUtil.TOKEN, producto);
  }

}