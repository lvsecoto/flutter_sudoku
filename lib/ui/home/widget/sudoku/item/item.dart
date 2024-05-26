import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';

import 'indicate_editing.dart';
import 'number_text.dart';
import 'background.dart';

class SudokuNumberItemWidget extends StatelessWidget {
  const SudokuNumberItemWidget({
    super.key,
    required this.index,
  });

  final provider.SudokuIndex index;

  @override
  Widget build(BuildContext context) {
    return SudokuNumberBackgroundWidget(
      index: index,
      child: IndicateSudokuNumberEditingWidget(
        index: index,
        child: _EditNumber(
          index: index,
          child: FittedBox(
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Consumer(
                builder: (context, ref, _) {
                  final number = provider.watchSudokuNumber(ref, index);
                  final color = provider.watchSudokuNumberColor(ref, index);
                  return AnimatedSwitcher(
                    duration: Durations.short4,
                    child: KeyedSubtree(
                      key: ValueKey(number?.number),
                      child: SudokuNumberTextWidget(
                        number: number,
                        colorState: color,
                      ),
                    ),
                  );
                },
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
      onTap: canEdit
          ? () {
              provider.actionSelectSudokuIndex(ref, index);
            }
          : null,
      child: child,
    );
  }
}
