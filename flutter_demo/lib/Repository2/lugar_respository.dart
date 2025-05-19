import 'dart:io';

import 'package:flutter_demo/models/lugar_dto.dart';
import 'package:flutter_demo/models/lugar_response.dart';

abstract class LugarRepository {
  Future<List<LugarResponse>> getLugares();
  Future<LugarResponse> getLugarById(int id);
  Future<LugarResponse> postLugar(LugarDto lugar, File? imagen);
  Future<LugarResponse> putLugar(int id, LugarDto lugar, File? imagen);
  Future<void> deleteLugar(int id);
}