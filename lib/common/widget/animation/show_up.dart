import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ShowUp extends HookWidget {
  /// 当[start]为true时，Widget开始显示
  const ShowUp({
    super.key,

    /// 动画时长
    this.delay = Duration.zero,

    /// 动画时长
    this.duration = const Duration(milliseconds: 500),

    /// 动画曲线
    this.curve = Curves.easeIn,

    /// 动画完成后回调
    this.onFinished,

    /// 是否开始动画
    this.start = true,

    /// 是否直接跳过动画
    this.skip = false,

    this.maintain = true,

    /// 动画效果构建
    this.builder = kFade,
    this.child,
  });

  final VoidCallback? onFinished;

  final Duration delay;

  final Duration duration;

  final bool start;

  final bool skip;

  static Widget kFade(
      BuildContext context, Animation<double> animation, Widget? child) {
    return FadeTransition(
      opacity: animation,
      child: child,
    );
  }

  static Widget kSlideUp(
      BuildContext context, Animation<double> animation, Widget? child) {
    return SlideTransition(
      position: Tween(
        begin: const Offset(0, 1),
        end: const Offset(0, 0),
      ).animate(animation),
      child: child,
    );
  }

  static Widget kSlideLeft(
      BuildContext context, Animation<double> animation, Widget? child) {
    return SlideTransition(
      position: Tween(
        begin: const Offset(1, 0),
        end: const Offset(0, 0),
      ).animate(animation),
      child: child,
    );
  }

  final Curve curve;

  final ValueWidgetBuilder<Animation<double>> builder;

  final Widget? child;

  final bool maintain;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: duration,
      initialValue: skip ? 1.0 : 0,
    );
    final finished = useState(false);
    final isDelayLoad = useState(delay == Duration.zero);
    useMemoized(() async {
      if (start) {
        if (delay != Duration.zero) {
          await Future.delayed(delay);
        }
        if (!context.mounted) return;
        isDelayLoad.value = true;
        if (context.mounted) {
          await controller.forward();
          onFinished?.call();
          finished.value = true;
        }
      }
    }, [start]);
    return Visibility(
      visible: isDelayLoad.value,
      maintainState: maintain,
      maintainSize: maintain,
      maintainAnimation: maintain,
      maintainInteractivity: maintain,
      child: IgnorePointer(
        ignoring: !finished.value,
        child: builder(
          context,
          CurvedAnimation(parent: controller, curve: curve),
          child,
        ),
      ),
    );
  }
}
