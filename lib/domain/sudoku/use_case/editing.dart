part of 'use_case.dart';

/// 对数独进行编辑
extension SudokuEditing on PartSudoku {
  /// 在[index]填充数字[number]
  PartSudoku fill(SudokuIndex index, SudokuNumber number) {
    return copyWith(
      numbers: [
        ...numbers,
      ]..[index.index] = number,
    );
  }
}
