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
SudokuNumberColorState watchSudokuNumberColor(
    WidgetRef ref, SudokuIndex index) {
  return ref.watch(_selectGameState((state) {
    if (state.canFill(index)) {
      return SudokuNumberColorState.edited;
    } else {
      return SudokuNumberColorState.normal;
    }
  }));
}

/// 数独数字的文本(状态)颜色
enum SudokuBackgroundColorState {
  /// 正常的
  normal,

  /// 和当前输入中的关联
  relateToCurrentInput,
  ;
}

@riverpod
List<SudokuIndex> inputRelatedIndexes(InputRelatedIndexesRef ref) {
  return ref.watch(
      currentInputSudokuIndexProvider.select((it) => it?.relatedIndexes ?? []));
}

/// 根据索引，决定数字的背景颜色
SudokuBackgroundColorState watchSudokuBackgroundColor(
    WidgetRef ref, SudokuIndex index) {
  final inputIndex = ref.watch(currentInputSudokuIndexProvider);
  if (inputIndex == null) {
    return SudokuBackgroundColorState.normal;
  } else {
    final isRelated =
        ref.watch(inputRelatedIndexesProvider.select((it) => it.any((it) {
              return it.index == index.index;
            })));
    return isRelated
        ? SudokuBackgroundColorState.relateToCurrentInput
        : SudokuBackgroundColorState.normal;
  }
}
