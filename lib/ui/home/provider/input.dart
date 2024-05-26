part of 'provider.dart';

/// 当前正在输入的数独索引
@riverpod
class CurrentInputSudokuIndex extends _$CurrentInputSudokuIndex with SelectableNotifier {
  @override
  SudokuIndex? build() {
    ref.keepAlive();
    return null;
  }
}

/// 操作：选择数独索引
void actionSelectSudokuIndex(WidgetRef ref, SudokuIndex index) {
  ref.read(currentInputSudokuIndexProvider.notifier).select(index);
}

/// 观察可输入的数独数字
List<SudokuNumber> watchSudokuInputNumbers(WidgetRef ref) {
  return ref.watch(_selectGameState((state) {
    final dimension = state.matrix.dimension;
    return List.generate(
      dimension,
          (index) => SudokuNumber(index + 1),
    ).toList();
  }));
}

/// 当前正在输入的数独数字
SudokuNumber? watchCurrentInputSudokuNumber(WidgetRef ref) {
  final currentIndex = ref.watch(currentInputSudokuIndexProvider);
  if (currentIndex != null) {
    return ref.watch(
      _selectGameState((state) => state.solution.getNumber(currentIndex)),
    );
  } else {
    return null;
  }
}

/// 观察当前，选中的是第几个数独数字，在[watchSudokuInputNumbers]当中
int watchSelectedSudokuNumbersIndex(WidgetRef ref) {
  final numbers = watchSudokuInputNumbers(ref);
  final selectedNumber = watchCurrentInputSudokuNumber(ref);
  if (selectedNumber == null) return -1;
  return numbers.indexOf(selectedNumber);
}


/// 操作：填充[number]到当前正在输入的索引上
void actionFillInputSudokuNumber(WidgetRef ref, SudokuNumber number) {
  final currentIndex = ref.read(currentInputSudokuIndexProvider);
  if (currentIndex != null) {
    _updateGameState(ref, (state) {
      return state.fill(currentIndex, number);
    },);
  }
}
