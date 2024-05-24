part of 'service.dart';

@RestApi(
  parser: Parser.DartJsonMapper,
)
abstract class HomeService {
  factory HomeService(
    Dio dio, {
    String? baseUrl,
  }) = _HomeService;

  /// 获取用户信息
  @GET('/user')
  Future<Map<String, dynamic>> getUser();
}
