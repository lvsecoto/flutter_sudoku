import 'package:dio/dio.dart';

import '../api.dart';

export 'interceptors.dart';

class APIInterceptors extends Interceptor {
  /// 服务器数据处理
  ///
  /// ## 返回
  /// 1. 如果$.success是true
  ///  把$.data返回
  /// 2. 否则
  ///  把错误代码和错误消息抛出，错误类型[APIError]
  const APIInterceptors();

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    var data = response.data;
    if (data is Map) {
      if (data['code'] != 0) {
        final code = (data['code'] as int?) ?? 0;
        handler.reject(
          DioException(
            requestOptions: response.requestOptions,
            type: DioExceptionType.unknown,
            error: APIError(
              code: code,
              message: data['message'],
            ),
            response: response,
          ),
          true,
        );
        return;
      } else {
        final dataField = data['data'] ?? <String, dynamic>{};
        response.data = dataField;
        handler.next(response);
        return;
      }
    }

    handler.next(response);
  }
}
