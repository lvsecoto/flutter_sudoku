import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Swing extends HookWidget {
  /// 来回播放动画
  const Swing({
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
          controller.reverse();
        } else if (controller.isDismissed) {
          controller.forward();
        }
      }

      controller.addStatusListener(onStateChanged);
      controller.forward();
      return () {
        controller.removeStatusListener(onStateChanged);
      };
    }, [controller]);

    return builder(context, controller, child);
  }
}
