part of 'use_case.dart';

/// 对数独进行编辑
extension SudokuEditing on SudokuGameState {
  /// 玩家在[index]往数独游戏填充数字[number]
  SudokuGameState fill(SudokuIndex index, SudokuNumber number) {
    return copyWith(
      solution: solution.copyWith(
        numbers: [
          ...solution.numbers,
        ]..[index.index] = number,
      ),
    );
  }
}
