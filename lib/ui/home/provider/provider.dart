import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/domain/domain.dart';
import 'package:flutter_sudoku/domain/sudoku/use_case/use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:flutter_sudoku/domain/sudoku/sudoku.dart' show SudokuIndex, SudokuNumber;

part 'sudoku.dart';
part 'input.dart';
part 'provider.g.dart';

@riverpod
String home(HomeRef ref) {
  return 'home';
}
