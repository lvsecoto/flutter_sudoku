import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SudokuNumberBackgroundWidget extends HookConsumerWidget {
  const SudokuNumberBackgroundWidget({
    super.key,
    required this.index,
    required this.child,
  });

  final provider.SudokuIndex index;

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final colorState = provider.watchSudokuBackgroundColor(ref, index);
    final color = switch (colorState) {
      provider.SudokuBackgroundColorState.normal => Colors.transparent,
      provider.SudokuBackgroundColorState.relateToCurrentInput =>
        Theme.of(context).colorScheme.primary.withOpacity(0.12),
      provider.SudokuBackgroundColorState
            .relateToCurrentInputAndSameWithInvalid =>
        Colors.red.withOpacity(0.12),
    };
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
        animationDuration: Durations.short4,
        color: colorTween.value.transform(controller.value),
        child: child,
      ),
    );
  }
}
