import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:flutter_sudoku/domain/sudoku/sudoku.dart' show SudokuIndex;

part 'sudoku.dart';
part 'provider.g.dart';

@riverpod
String home(HomeRef ref) {
  return 'home';
}
