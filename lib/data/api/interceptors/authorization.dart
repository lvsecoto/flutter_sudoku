import 'dart:async';

import 'package:dio/dio.dart';

typedef TokenProvider = FutureOr<String> Function();
typedef OnAuthorizeFailed = void Function();

class AuthorizationInterceptors extends Interceptor {
  /// 验证拦截器
  ///
  /// 给请求增加token
  AuthorizationInterceptors({
    required this.tokenProvider,
    required this.onAuthorizeFailed,
  });

  final TokenProvider tokenProvider;

  final OnAuthorizeFailed onAuthorizeFailed;

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers = {
      ...options.headers,
      'Authorization': 'Bearer ${await tokenProvider()}'
    };
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (err.response?.statusCode == 401) {
      onAuthorizeFailed();
      handler.reject(DioException(
        requestOptions: err.requestOptions,
        error: '用户已登出',
      ));
    } else {
      super.onError(err, handler);
    }
  }
}
