import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Repeat extends HookWidget {
  /// 循环播放动画
  const Repeat({
    super.key,
    this.duration = const Duration(milliseconds: 500),
    this.builder = kSlideUp,
    this.child
  });

  static Widget kSlideUp(
      BuildContext context, Animation<double> animation, Widget? child) {
    return SlideTransition(
      position: Tween(
        begin: const Offset(0, 0.05),
        end: const Offset(0, 0),
      ).animate(animation),
      child: child,
    );
  }

  final ValueWidgetBuilder<Animation<double>> builder;

  final Duration duration;

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: duration,
    );
    useEffect(() {
      void onStateChanged(AnimationStatus _) {
        if (controller.isCompleted) {
          controller.forward(from: 0);
        }
      }

      controller.addStatusListener(onStateChanged);
      controller.forward();
      return null;
    }, [controller]);

    return builder(context, controller, child);
  }
}
