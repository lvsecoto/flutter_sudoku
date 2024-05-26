import 'dart:ui';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/domain/domain.dart';
import 'package:flutter_sudoku/domain/sudoku/sudoku.dart';
import 'package:flutter_sudoku/domain/sudoku/use_case/use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:flutter_sudoku/domain/sudoku/sudoku.dart'
    show SudokuLevel, SudokuIndex, SudokuNumber;

part 'sudoku.dart';

part 'input.dart';

part 'state.dart';

part 'provider.g.dart';

@riverpod
String homeTitle(HomeTitleRef ref) {
  return ref.watch(_selectGameState((state) {
    return '数独 (${state.matrix.level.description})';
  }));
}

extension LevelEx on SudokuLevel {
  String get description {
    return switch (this) {
      SudokuLevel.easy => '简单',
      SudokuLevel.medium => '中等',
      SudokuLevel.hard => '困难',
      SudokuLevel.expert => '地狱',
    };
  }
}
