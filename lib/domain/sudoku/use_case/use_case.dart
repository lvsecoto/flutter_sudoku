import 'dart:math';

import '../sudoku.dart';

part 'relation.dart';
part 'editing.dart';
part 'state.dart';

extension SudokuGameStateEx on SudokuGameState {
  /// 获取数独数字，合并用户填充和未填充时，谜题中的数字
  SudokuNumber? getNumber(SudokuIndex index) {
    return
        // 没被遮盖的数字，优先显示
        puzzle.masked.getNumber(index) ??
            // 然后显示编辑中的数字
            solution.getNumber(index);
  }
}
