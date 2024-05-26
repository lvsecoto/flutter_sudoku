part of 'provider.dart';

/// 观察索引是否可以被编辑
bool watchSudokuIndexCanEdit(WidgetRef ref, SudokuIndex index) {
  return ref.watch(_selectGameState((state) => state.canFill(index)));
}

/// 数独数字的文本(状态)颜色
enum SudokuNumberColorState {

  /// 正常的
  normal,

  /// 编辑过的
  edited,
  ;
}

/// 根据索引，决定数字的文本颜色
///
/// 如果
SudokuNumberColorState watchSudokuNumberColor(WidgetRef ref, SudokuIndex index) {
  return ref.watch(_selectGameState((state) {
    if(state.canFill(index)) {
      return SudokuNumberColorState.edited;
    } else {
      return SudokuNumberColorState.normal;
    }
  }));
}