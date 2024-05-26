part of 'provider.dart';

/// 观察索引是否可以被编辑
bool watchSudokuIndexCanEdit(WidgetRef ref, SudokuIndex index) {
  return ref.watch(_selectGameState((state) => state.canFill(index)));
}

/// 数独校验结果
@riverpod
SudokuValidation sudokuValidation(SudokuValidationRef ref) {
  return ref.watch(_selectGameState((state) => state.invalidation));
}

/// 数独数字的文本(状态)颜色
enum SudokuNumberColorState {
  /// 正常的
  normal,

  /// 不正确的
  invalid,

  /// 已经完成的数独
  completed,

  /// 编辑过的
  edited,
  ;
}

/// 根据索引，决定数字的文本颜色
@riverpod
SudokuNumberColorState sudokuNumberColor(
  SudokuNumberColorRef ref,
  SudokuIndex index,
) {
  final isInvalid = ref.watch(sudokuValidationProvider.select(
    (it) => it.invalid.contains(index),
  ));
  if (isInvalid) {
    return SudokuNumberColorState.invalid;
  } else {
    final isCompleted = ref.watch(sudokuValidationProvider.select(
      (it) => it.completed.contains(index),
    ));
    if (isCompleted) {
      return SudokuNumberColorState.completed;
    }

    final canFill =
        ref.watch(_selectGameState((state) => state.canFill(index)));
    if (canFill) {
      return SudokuNumberColorState.edited;
    } else {
      return SudokuNumberColorState.normal;
    }
  }
}

/// 根据索引，决定数字的文本颜色
SudokuNumberColorState watchSudokuNumberColor(
    WidgetRef ref, SudokuIndex index) {
  return ref.watch(sudokuNumberColorProvider(index));
}

/// 数独数字的背景颜色
enum SudokuBackgroundColorState {
  /// 正常的
  normal,

  /// 和当前输入中的关联
  relateToCurrentInput,

  /// 和当前输入中的关联，相同，并且是错误的
  relateToCurrentInputAndSameWithInvalid,
  ;
}

/// 和当前输入中的索引，相关的索引
@riverpod
List<SudokuIndex> inputRelatedIndexes(InputRelatedIndexesRef ref) {
  return ref.watch(
      currentInputSudokuIndexProvider.select((it) => it?.relatedIndexes ?? []));
}

/// 根据索引，决定数字的背景颜色
@riverpod
SudokuBackgroundColorState sudokuBackgroundColor(
    SudokuBackgroundColorRef ref, SudokuIndex index) {
  final inputIndex = ref.watch(currentInputSudokuIndexProvider);
  if (inputIndex == null) {
    return SudokuBackgroundColorState.normal;
  } else {
    final isRelated =
        ref.watch(inputRelatedIndexesProvider.select((it) => it.any((it) {
              return it.index == index.index;
            })));
    final isNumberSameWithInput = ref.watch(_selectGameState(
        (state) => state.getNumber(index) == state.getNumber(inputIndex)));
    if (isRelated) {
      final isInvalid = ref.watch(
          sudokuValidationProvider.select((it) => it.invalid.contains(index)));
      if (isInvalid && isNumberSameWithInput) {
        return SudokuBackgroundColorState
            .relateToCurrentInputAndSameWithInvalid;
      } else {
        return SudokuBackgroundColorState.relateToCurrentInput;
      }
    }
    return SudokuBackgroundColorState.normal;
  }
}

/// 根据索引，决定数字的背景颜色
SudokuBackgroundColorState watchSudokuBackgroundColor(
    WidgetRef ref, SudokuIndex index) {
  return ref.watch(sudokuBackgroundColorProvider(index));
}
