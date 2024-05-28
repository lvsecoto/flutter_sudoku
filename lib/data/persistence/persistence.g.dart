// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'persistence.dart';

// **************************************************************************
// PersistenceGenerator
// **************************************************************************

class _$AppPersistence {
  Future<LazyBox> box;

  _$AppPersistence(this.box);

  /// 设置游戏状态[gameState]
  Future<void> setGameState(SudokuGameState? gameState) async {
    // 如果设置字段为空，则清除这个值
    if (gameState == null) {
      await (await box).delete('game_state');
      return;
    }

    await (await box).put('game_state', jsonEncode(gameState.toJson()));
  }

  /// 获取游戏状态[gameState]
  Future<SudokuGameState?> getGameState() async {
    return _decodeGameState(
        await (await box).get('game_state', defaultValue: '{}'));
  }

  /// 观察游戏状态[gameState]
  Stream<SudokuGameState?> observeGameState() => (_gameState ??= () async* {
        yield (await getGameState());
        yield* (await box)
            .watch(key: 'game_state')
            .map((event) => _decodeGameState(event.value ?? ''));
      }()
              .shareReplay())
          .asBroadcastStream();

  Stream<SudokuGameState?>? _gameState;

  /// SudokuGameState是enum或Class，需要序列化
  SudokuGameState? _decodeGameState(String? val) {
    try {
      return SudokuGameState.fromJson(jsonDecode(val.toString()));
    } catch (e) {
      return AppPersistence.gameState;
    }
  }

  /// 设置当前选择的索引[currentInputIndex]
  Future<void> setCurrentInputIndex(SudokuIndex? currentInputIndex) async {
    // 如果设置字段为空，则清除这个值
    if (currentInputIndex == null) {
      await (await box).delete('current_input_index');
      return;
    }

    await (await box)
        .put('current_input_index', jsonEncode(currentInputIndex.toJson()));
  }

  /// 获取当前选择的索引[currentInputIndex]
  Future<SudokuIndex?> getCurrentInputIndex() async {
    return _decodeCurrentInputIndex(
        await (await box).get('current_input_index', defaultValue: '{}'));
  }

  /// 观察当前选择的索引[currentInputIndex]
  Stream<SudokuIndex?> observeCurrentInputIndex() =>
      (_currentInputIndex ??= () async* {
        yield (await getCurrentInputIndex());
        yield* (await box)
            .watch(key: 'current_input_index')
            .map((event) => _decodeCurrentInputIndex(event.value ?? ''));
      }()
              .shareReplay())
          .asBroadcastStream();

  Stream<SudokuIndex?>? _currentInputIndex;

  /// SudokuIndex是enum或Class，需要序列化
  SudokuIndex? _decodeCurrentInputIndex(String? val) {
    try {
      return SudokuIndex.fromJson(jsonDecode(val.toString()));
    } catch (e) {
      return AppPersistence.currentInputIndex;
    }
  }

  /// 设置游戏历史[gameHistoryStack]
  Future<void> setGameHistoryStack(
      List<SudokuGameHistory> gameHistoryStack) async {
    await (await box).put('game_history_stack', jsonEncode(gameHistoryStack));
  }

  /// 获取游戏历史[gameHistoryStack]
  Future<List<SudokuGameHistory>> getGameHistoryStack() async {
    return _decodeGameHistoryStack(
            await (await box).get('game_history_stack', defaultValue: ''))
        as List<SudokuGameHistory>;
  }

  /// 观察游戏历史[gameHistoryStack]
  Stream<List<SudokuGameHistory>> observeGameHistoryStack() =>
      (_gameHistoryStack ??= () async* {
        yield (await getGameHistoryStack());
        yield* (await box)
            .watch(key: 'game_history_stack')
            .map((event) => _decodeGameHistoryStack(event.value ?? ''));
      }()
              .shareReplay())
          .asBroadcastStream();

  Stream<List<SudokuGameHistory>>? _gameHistoryStack;

  /// List<SudokuGameHistory>是List，需要序列化
  List<SudokuGameHistory> _decodeGameHistoryStack(String val) {
    try {
      return (jsonDecode(val) as List<dynamic>?)
              ?.map((it) => SudokuGameHistory.fromJson(it))
              .toList() ??
          AppPersistence.gameHistoryStack;
    } catch (e) {
      return AppPersistence.gameHistoryStack;
    }
  }

  /// 设置游戏历史步骤[gameHistoryStackStep]
  Future<void> setGameHistoryStackStep(int gameHistoryStackStep) async {
    await (await box).put('game_history_stack_step', gameHistoryStackStep);
  }

  /// 获取游戏历史步骤[gameHistoryStackStep]
  Future<int> getGameHistoryStackStep() async {
    return await (await box).get('game_history_stack_step',
        defaultValue: AppPersistence.gameHistoryStackStep);
  }

  /// 观察游戏历史步骤[gameHistoryStackStep]
  Stream<int> observeGameHistoryStackStep() =>
      (_gameHistoryStackStep ??= () async* {
        yield (await getGameHistoryStackStep());
        yield* (await box)
            .watch(key: 'game_history_stack_step')
            .map((event) => event.value as int);
      }()
              .shareReplay())
          .asBroadcastStream();

  Stream<int>? _gameHistoryStackStep;
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appPersistenceHash() => r'd56557b01f509ef5aa62da05ae830f81a51f45ba';

/// See also [appPersistence].
@ProviderFor(appPersistence)
final appPersistenceProvider = AutoDisposeProvider<AppPersistence>.internal(
  appPersistence,
  name: r'appPersistenceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appPersistenceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef AppPersistenceRef = AutoDisposeProviderRef<AppPersistence>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
