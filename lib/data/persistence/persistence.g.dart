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
