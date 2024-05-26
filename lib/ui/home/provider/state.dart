part of 'provider.dart';

/// 观察索引是否可以被编辑
bool watchSudokuIndexCanEdit(WidgetRef ref, SudokuIndex index) {
  return ref.watch(_selectGameState((state) => state.canFill(index)));
}