import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/data/data.dart';
import 'package:flutter_sudoku/domain/domain.dart';
import 'package:flutter_sudoku/domain/sudoku/sudoku.dart';
import 'package:flutter_sudoku/domain/sudoku/use_case/use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

export 'package:flutter_sudoku/domain/sudoku/sudoku.dart'
    show SudokuLevel, SudokuIndex, SudokuNumber;

part 'sudoku.dart';
part 'input.dart';
part 'state.dart';
part 'history.dart';
part 'restore.dart';

part 'provider.g.dart';
part 'provider.freezed.dart';

@riverpod
String homeTitle(HomeTitleRef ref) {
  return ref.watch(_selectGameState((state) {
    return '数独 (${state.matrix.level.description})';
  }));
}

extension LevelEx on SudokuLevel {
  String get description {
    return switch (this) {
      SudokuLevel.easy => '简单',
      SudokuLevel.medium => '中等',
      SudokuLevel.hard => '困难',
      SudokuLevel.expert => '地狱',
    };
  }
}

@riverpod
class _IsHomeInitialized extends _$IsHomeInitialized with ToggleableNotifier {
  @override
  bool build() {
    return false;
  }
}

/// 数独是否加载完毕
bool watchIsInitialized(WidgetRef ref) {
  return ref.watch(_isHomeInitializedProvider);
}

/// 首次进入游戏时初始化
Future<void> onHomeBegin(WidgetRef ref) async {
  await _restoreGameState(ref);
  await _restoreGameHistory(ref);
  ref.read(_isHomeInitializedProvider.notifier).check();
}
