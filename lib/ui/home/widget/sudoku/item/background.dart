import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;

class SudokuNumberBackgroundWidget extends ConsumerWidget {
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
    return Material(
      animationDuration: Durations.short4,
      color: switch(colorState) {
        provider.SudokuBackgroundColorState.normal => Colors.transparent,
        provider.SudokuBackgroundColorState.relateToCurrentInput => Theme.of(context).colorScheme.primary.withOpacity(0.12),
        provider.SudokuBackgroundColorState.relateToCurrentInputAndSameWithInvalid => Colors.red.withOpacity(0.12),
      },
      child: child,
    );
  }
}
