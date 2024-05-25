import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:sudoku_dart/sudoku_dart.dart' as sudoku;

part 'model.dart';

part 'provider.dart';

part 'sudoku.g.dart';

part 'sudoku.freezed.dart';

@riverpod
SudokuManager sudokuManager(SudokuManagerRef ref) {
  return SudokuManager(ref);
}

class SudokuManager {
  final AutoDisposeRef<SudokuManager> _ref;

  /// 数独管理器
  SudokuManager(this._ref);

  /// 创建数独游戏
  SudokuGameState createGame() {
    final generatedSudoku = sudoku.Sudoku.generate(sudoku.Level.easy);
    return SudokuGameState(
      matrix: const SudokuMatrix(),
      puzzle: SudokuGamePuzzle(
        masked: PartSudoku(
          numbers: generatedSudoku.puzzle.map(
            (it) {
              if (it == -1) return null;
              return SudokuNumber(it);
            },
          ).toList(),
        ),
        plain: CompletedSudoku(
          numbers: generatedSudoku.solution.map(SudokuNumber.new).toList(),
        ),
      ),
      solution: Sudoku.empty(),
    );
  }
}
