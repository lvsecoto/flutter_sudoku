import 'package:flutter_riverpod/flutter_riverpod.dart';
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
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(
          number?.number.toString() ?? '',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
