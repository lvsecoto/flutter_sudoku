import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'home.dart';
part 'service.g.dart';

class JsonMapper {
  static dynamic fromMap<T>(dynamic data) {
    return data;
  }
}

