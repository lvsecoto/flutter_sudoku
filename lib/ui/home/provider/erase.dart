part of 'provider.dart';

/// 是否是擦除模式
@riverpod
class IsSudokuEraseMode extends _$IsSudokuEraseMode with ToggleableNotifier {
  @override
  bool build() {
    return false;
  }
}

/// 是否进入了擦除模式
bool watchIsSudokuEraseMode(WidgetRef ref) {
  return ref.watch(isSudokuEraseModeProvider);
}

/// 切换擦除模式
void actionToggleSudokuEraseMode(WidgetRef ref) {
  ref.read(isSudokuEraseModeProvider.notifier).toggle();
}

/// 操作：擦除索引[index]上的数字
///
/// *会记录到历史中*
void actionEraseSudokuNumberAtIndex(WidgetRef ref, SudokuIndex index) {
  _updateGameState(
    ref,
        (state) {
      return state.fill(index, null);
    },
  );
}
