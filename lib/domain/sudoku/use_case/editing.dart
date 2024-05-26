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

  /// 玩家清除所有输入
  SudokuGameState clearAll() {
    return copyWith(
      solution: solution.copyWith(
        numbers: const [],
      ),
    );
  }
}

/// 判断数独是否可以编辑
extension SudokuEditable on SudokuGameState {
  /// 索引[index]是否可以填充
  ///
  /// 挖空的可以被填充
  bool canFill(SudokuIndex index) {
    return puzzle.masked.getNumber(index) == null;
  }
}
