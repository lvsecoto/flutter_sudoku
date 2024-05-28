part of 'provider.dart';

/// 恢复游戏状态
Future<void> _restoreGameState(WidgetRef ref) async {
  final persistence = _readPersistence(ref);

  final gameState = await persistence.getGameState();
  if (gameState != null) {
    ref.read(currentSudokuGameStateProvider.notifier).select(gameState);
  } else {
    ref.read(currentSudokuGameStateProvider.notifier).select(
          ref.read(sudokuManagerProvider).createGame(),
        );
  }

  final inputIndex = await persistence.getCurrentInputIndex();
  ref.read(currentInputSudokuIndexProvider.notifier).select(inputIndex);
}

/// 恢复历史状态
Future<void> _restoreGameHistory(WidgetRef ref) async {
  final historyStack = ref.read(currentSudokuGameHistoryStackProvider);
  historyStack.restore(
    store: await ref.read(appPersistenceProvider).getGameHistoryStack(),
    step: await ref.read(appPersistenceProvider).getGameHistoryStackStep(),
  );
}

AppPersistence _readPersistence(WidgetRef ref) {
  return ref.read(appPersistenceProvider);
}

/// 保存游戏状态
Future<void> _saveGameState(Ref ref, SudokuGameState gameState) async {
  ref.read(appPersistenceProvider).setGameState(gameState);
}

/// 保存输入索引
Future<void> _saveGameInputIndex(
    Ref ref, SudokuIndex? currentInputIndex) async {
  ref.read(appPersistenceProvider).setCurrentInputIndex(currentInputIndex);
}

/// 保存游戏历史
Future<void> _saveGameHistory(Ref ref, SudokuGameHistoryStack stack) async {
  final persistence = ref.read(appPersistenceProvider);
  final data = stack.read();
  persistence.setGameHistoryStackStep(
    data.step,
  );
  persistence.setGameHistoryStack(
    data.store,
  );
}
