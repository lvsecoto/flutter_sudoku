import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'provider.g.dart';

@riverpod
String home(HomeRef ref) {
  return 'home';
}
