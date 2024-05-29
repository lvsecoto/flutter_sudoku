import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AnimatedMaterial extends HookWidget {
  const AnimatedMaterial({
    super.key,
    this.color,
    this.shape,
    required this.child,
  });

  final ShapeBorder? shape;

  final Color? color;

  final Widget child;

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(duration: Durations.short3);
    final colorTween =
        useRef(ColorTween(begin: Colors.transparent, end: color));
    useMemoized(() {
      colorTween.value = ColorTween(
        begin: colorTween.value.transform(controller.value),
        end: color,
      );
      controller.forward(from: 0);
    }, [color]);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, _) => Material(
        shape: shape,
        animationDuration: Durations.short4,
        color: colorTween.value.transform(controller.value),
        child: child,
      ),
    );
  }
}
