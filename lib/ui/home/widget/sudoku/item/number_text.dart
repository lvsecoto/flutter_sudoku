import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';

class SudokuNumberTextWidget extends StatelessWidget {

  /// 数独文本
  const SudokuNumberTextWidget({
    super.key,
    required this.number,
    required this.colorState,
  });

  final provider.SudokuNumber? number;

  final provider.SudokuNumberColorState colorState;

  @override
  Widget build(BuildContext context) {
    final primaryTextStyle = Theme.of(context).textTheme.titleMedium!;
    return Text(
      number?.number.toString() ?? '',
      style: primaryTextStyle.copyWith(
        fontWeight: colorState != provider.SudokuNumberColorState.normal ? FontWeight.bold : null,
        color: switch(colorState) {
          provider.SudokuNumberColorState.normal => primaryTextStyle.color!.withOpacity(0.58),
          provider.SudokuNumberColorState.edited => Theme.of(context).colorScheme.primary,
        },
      ),
    );
  }
}
