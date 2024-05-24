import 'package:dio/dio.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'interceptors/interceptors.dart';
import 'service/service.dart';

part 'model.dart';
part 'provider.dart';

part 'api.g.dart';

@riverpod
ApiManager apiManager(ApiManagerRef ref) {
  return ApiManager(ref);
}

class ApiManager {
  // ignore: unused_field
  final AutoDisposeRef<ApiManager> _ref;

  ApiManager(this._ref);

  late final _dio = Dio()..interceptors.addAll([
    AuthorizationInterceptors(tokenProvider: () => '', onAuthorizeFailed: () {  }),
    const APIInterceptors(),
  ]);

  late final homeService = HomeService(_dio);
}