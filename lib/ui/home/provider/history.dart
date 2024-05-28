part of 'provider.dart';

/// 数独游戏历史记录
typedef SudokuGameHistoryStack = HistoryStack<SudokuGameHistory>;

@freezed
class SudokuGameHistory with _$SudokuGameHistory {
  /// 数独游戏历史
  const factory SudokuGameHistory({
    /// 当前的游戏状态
    required SudokuGameState gameState,

    /// 当前正在输入的索引
    required SudokuIndex? inputIndex,
  }) = _SudokuGameHistory;

  factory SudokuGameHistory.fromJson(Map<String, dynamic> json) =>
      _$SudokuGameHistoryFromJson(json);
}

@riverpod
class CurrentSudokuGameHistoryStack extends _$CurrentSudokuGameHistoryStack {
  @override
  SudokuGameHistoryStack build() {
    ref.keepAlive();
    final historyStack = SudokuGameHistoryStack();
    void onChanged() async {
      state = historyStack;
    }
    historyStack.addListener(onChanged);
    ref.onDispose(() {
      historyStack.removeListener(onChanged);
    });
    return historyStack;
  }

  @override
  bool updateShouldNotify(SudokuGameHistoryStack previous, SudokuGameHistoryStack next) {
    return true;
  }

  @override
  set state(SudokuGameHistoryStack value) {
    super.state = value;
    _saveGameHistory(ref, value);
  }
}

/// 清除游戏状态到历史堆栈
Future<void> _clearGameHistory(WidgetRef ref) async {
  _readHistoryStack(ref).clear();
}

/// 记录游戏状态到历史堆栈
Future<void> _recordGameHistory(WidgetRef ref) async {
  final gameState = ref.read(currentSudokuGameStateProvider);
  final inputIndex = ref.read(currentInputSudokuIndexProvider);
  _readHistoryStack(ref).record(
    SudokuGameHistory(gameState: gameState, inputIndex: inputIndex),
  );
}

/// 读取历史记录堆栈
SudokuGameHistoryStack _readHistoryStack(WidgetRef ref) {
  return ref.read(currentSudokuGameHistoryStackProvider);
}

/// 监听历史记录堆栈
ProviderListenable<T> _selectHistoryStack<T>(
  T Function(SudokuGameHistoryStack stack) selector,
) {
  return currentSudokuGameHistoryStackProvider.select((it) {
    return selector(it);
  });
}

/// 观察是否可以撤销操作
bool watchSudokuCanUndo(WidgetRef ref) {
  return ref.watch(_selectHistoryStack((stack) => stack.canUndo ?? false));
}

/// 操作：撤销
void actionUndo(WidgetRef ref) {
  final history = _readHistoryStack(ref).undo();
  _restoreWithHistory(ref, history);
}

/// 观察是否可以重做操作
bool watchSudokuCanRedo(WidgetRef ref) {
  return ref.watch(_selectHistoryStack((stack) => stack.canRedo ?? false));
}

/// 操作：重做
void actionRedo(WidgetRef ref) {
  final history = _readHistoryStack(ref).redo();
  _restoreWithHistory(ref, history);
}

/// 用历史恢复状态
void _restoreWithHistory(WidgetRef ref, SudokuGameHistory history) {
  _updateGameState(ref, (state) => history.gameState);
  ref.read(currentInputSudokuIndexProvider.notifier).select(history.inputIndex);
}
