part of 'use_case.dart';

/// 数独数字状态
extension SudokuNumberState on SudokuGameState {
  /// 数独索引[index]的数字是否**不正确**
  ///
  /// **不正确**，意思是违法数独规则，不单单是没填对
  ///
  /// 当这个数字还没完成，即没有预先填充，用户也没填充时，返回为空
  bool? isInValid(SudokuIndex index) {
    final number = getNumber(index);
    if (number == null) return null;

    // 和关联位置上的数字冲突了，就是违反了
    index.relatedIndexes;
  }
}
