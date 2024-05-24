import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'route/route.dart';

part 'router.g.dart';

@riverpod
GoRouter router(RouterRef ref) {
  final router = GoRouter(
    initialLocation: const HomeRoute().location,
    debugLogDiagnostics: true,
    routes: [
      ...$appRoutes,
    ],
    navigatorKey: rootNavigatorKey,
  );
  return router;
}