part of 'provider.dart';

/// 数独当前游戏状态
@riverpod
class CurrentSudokuGameState extends _$CurrentSudokuGameState
    with UpdateWithNotifier {
  @override
  SudokuGameState build() {
    return ref.watch(sudokuManagerProvider).createGame();
  }
}

/// 观察数独数字表格的列数
int watchSudokuMatrixDimension(WidgetRef ref) {
  return ref.watch(_selectGameState((state) => state.matrix.column));
}

/// 观察数独数字总数
int watchSudokuNumbersCount(WidgetRef ref) {
  return ref.watch(_selectGameState((state) => state.matrix.count));
}

/// 根据数字表格的一个索引[gridIndex]，获取对应的`数独索引`
SudokuIndex getSudokuNumberIndex(int gridIndex) {
  // 目前和表格索引一致
  return SudokuIndex(index: gridIndex);
}

/// 观察在`数独索引`上的数字
SudokuNumber? watchSudokuNumber(WidgetRef ref, SudokuIndex index) {
  return ref.watch(
    _selectGameState((state) {
      return
          // 没被遮盖的数字，优先显示
          state.puzzle.masked.getNumber(index) ??
              // 然后显示编辑中的数字
              state.solution.getNumber(index);
    }),
  );
}

/// 选择游戏状态的某一个属性
ProviderListenable<T> _selectGameState<T>(
    T Function(SudokuGameState state) selector) {
  return currentSudokuGameStateProvider.select(selector);
}

/// 更新游戏状态
void _updateGameState<T>(
    WidgetRef ref, SudokuGameState Function(SudokuGameState state) block) {
  ref.read(currentSudokuGameStateProvider.notifier).updateWith(block);
}
