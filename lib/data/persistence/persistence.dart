import 'dart:convert';

import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/domain/domain.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart';
import 'package:hive/hive.dart';
import 'package:persistence_annotation/persistence_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:rxdart/rxdart.dart';

part 'persistence.g.dart';

@riverpod
AppPersistence appPersistence(AppPersistenceRef ref) {
  return AppPersistence();
}

@persistenceAnnotation
class AppPersistence extends _$AppPersistence {
  AppPersistence(): super(Hive.openLazyBox('app'));

  /// 游戏状态
  static const SudokuGameState? gameState = null;

  /// 当前选择的索引
  static const SudokuIndex? currentInputIndex = null;

  /// 游戏历史
  static const List<SudokuGameHistory> gameHistoryStack = [];

  /// 游戏历史步骤
  static const int gameHistoryStackStep = 0;
}