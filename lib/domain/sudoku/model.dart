part of 'sudoku.dart';

abstract class Sudoku {
  List<int?> get numbers;

  /// 生成一个完全为空的数独序列
  static PartSudoku empty() {
    return PartSudoku(
      numbers: List.filled(81, null),
    );
  }
}

@Implements<Sudoku>()
@freezed
class CompletedSudoku with _$CompletedSudoku {
  /// 完整的数独序列
  const factory CompletedSudoku({
    required List<int> numbers,
  }) = _CompletedSudoku;
}

@Implements<Sudoku>()
@freezed
class PartSudoku with _$PartSudoku {
  /// 部分填充的数独
  const factory PartSudoku({
    required List<int?> numbers,
  }) = _PartSudoku;
}

@freezed
class SudokuIndex with _$SudokuIndex {
  /// 对数独数字进行定位
  const factory SudokuIndex({
    /// 直接用索引定位
    required int index,
  }) = _SudokuIndex;
}

@freezed
class SudokuGamePuzzle with _$SudokuGamePuzzle {
  /// 数独游戏的谜题
  const factory SudokuGamePuzzle({
    /// 挖空了的数独
    required PartSudoku masked,

    /// 完整的数独
    required CompletedSudoku plain,
  }) = _SudokuGamePuzzle;
}

@freezed
class SudokuGameState with _$SudokuGameState {
  /// 数独的游戏状态
  const factory SudokuGameState({
    /// 数独的谜题
    required final SudokuGamePuzzle puzzle,

    /// 数独解决状态
    required PartSudoku solution,
  }) = _SudokuGameState;
}
