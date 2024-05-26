import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';

class SudokuNumberTextWidget extends StatelessWidget {
  /// 数独文本
  const SudokuNumberTextWidget({
    super.key,
    required this.canEdit,
    required this.number,
    required this.colorState,
  });

  final bool canEdit;

  final provider.SudokuNumber? number;

  final provider.SudokuNumberColorState colorState;

  @override
  Widget build(BuildContext context) {
    final primaryTextStyle = Theme.of(context).textTheme.titleMedium!;
    final color = switch (colorState) {
      provider.SudokuNumberColorState.normal =>
        primaryTextStyle.color!.withOpacity(1),
      provider.SudokuNumberColorState.invalid => Colors.red,
      provider.SudokuNumberColorState.completed => Colors.green,
      provider.SudokuNumberColorState.edited =>
        Theme.of(context).colorScheme.primary,
    };
    return Text(
      number?.number.toString() ?? '',
      style: primaryTextStyle.copyWith(
        fontWeight: FontWeight.w400,
        decoration: canEdit ? TextDecoration.underline : null,
        decorationColor: color,
        color: color,
      ),
    );
  }
}
