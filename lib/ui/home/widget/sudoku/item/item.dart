import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';

import 'indicate_editing.dart';

class SudokuNumberItemWidget extends ConsumerWidget {
  const SudokuNumberItemWidget({
    super.key,
    required this.index,
  });

  final provider.SudokuIndex index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = provider.watchSudokuNumber(ref, index);
    return IndicateSudokuNumberEditingWidget(
      index: index,
      child: _EditNumber(
        index: index,
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
      ),
    );
  }
}

class _EditNumber extends ConsumerWidget {
  const _EditNumber({
    required this.index,
    required this.child,
  });

  final Widget child;

  final provider.SudokuIndex index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canEdit = provider.watchSudokuIndexCanEdit(ref, index);
    return InkWell(
      onTap: canEdit ? () {
        provider.actionSelectSudokuIndex(ref, index);
      }: null,
      child: child,
    );
  }
}
