import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart' hide GoRouteData;
import 'package:go_router/go_router.dart' as go_router;

import '../ui/ui.dart';

part 'route.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();

const _homeTypedRoute =TypedGoRoute<HomeRoute>(
  path: '/home',
);

/// 家路由
@_homeTypedRoute
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      HomeScreen();
}

class GoRouteData extends go_router.GoRouteData {

  /// 替换默认的路由实现
  const GoRouteData();

  static const $location = go_router.GoRouteData.$location;
  static const $route = go_router.GoRouteData.$route;

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return _DefaultCustomPage(
      key: state.pageKey,
      child: build(context, state),
    );
  }
}

class _DefaultCustomPage<T> extends MaterialPage<T> {
  /// 对页面的转场效果进行再配置
  const _DefaultCustomPage({
    super.key,
    required super.child,
  });

  @override
  Route<T> createRoute(BuildContext context) {
    return _DefaultCustomPageRoute<T>(
        page: this, allowSnapshotting: allowSnapshotting);
  }
}

class _DefaultCustomPageRoute<T> extends PageRoute<T>
    with MaterialRouteTransitionMixin<T> {

  _DefaultCustomPageRoute({
    required MaterialPage<T> page,
    super.allowSnapshotting,
  }) : super(settings: page) {
    assert(opaque);
  }

  MaterialPage<T> get _page => settings as MaterialPage<T>;

  @override
  Widget buildContent(BuildContext context) {
    return _page.child;
  }

  @override
  bool get maintainState => _page.maintainState;

  @override
  bool get fullscreenDialog => _page.fullscreenDialog;

  @override
  String get debugLabel => '${super.debugLabel}(${_page.name})';

  @override
  Duration get reverseTransitionDuration => const Duration(milliseconds: 600);

  @override
  Duration get transitionDuration => const Duration(milliseconds: 600);
}
