import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/ui/common/animated_visibility_widget.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';

class SudokuNumberItemWidget extends ConsumerWidget {
  const SudokuNumberItemWidget({
    super.key,
    required this.index,
  });

  final provider.SudokuIndex index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = provider.watchSudokuNumber(ref, index);
    return InkWell(
      onTap: () {
        provider.actionSelectSudokuIndex(ref, index);
      },
      child: FittedBox(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: AnimatedSwitcher(
            duration: Durations.short4,
            child: KeyedSubtree(
              key: ValueKey(number?.number),
              child: Text(
                number?.number.toString() ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
