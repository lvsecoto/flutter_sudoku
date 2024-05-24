part of 'api.dart';

class APIError {
  APIError({
    required int code,
    required String message,
  }): message = '($code): $message';

  final String message;

  @override
  String toString() {
    return 'APIError{message: $message}';
  }
}
