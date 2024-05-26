// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeHash() => r'89fc42a4b9f3a1dee036d9c0dab4281d205e1eb4';

/// See also [home].
@ProviderFor(home)
final homeProvider = AutoDisposeProvider<String>.internal(
  home,
  name: r'homeProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeRef = AutoDisposeProviderRef<String>;
String _$inputRelatedIndexesHash() =>
    r'2bf611f0812a5257911a6ff0092ce788bb88fd2e';

/// See also [inputRelatedIndexes].
@ProviderFor(inputRelatedIndexes)
final inputRelatedIndexesProvider =
    AutoDisposeProvider<List<SudokuIndex>>.internal(
  inputRelatedIndexes,
  name: r'inputRelatedIndexesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$inputRelatedIndexesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef InputRelatedIndexesRef = AutoDisposeProviderRef<List<SudokuIndex>>;
String _$currentSudokuGameStateHash() =>
    r'3cdff69eb26cf838f02d1a203dbf0de555c284ee';

/// 数独当前游戏状态
///
/// Copied from [CurrentSudokuGameState].
@ProviderFor(CurrentSudokuGameState)
final currentSudokuGameStateProvider = AutoDisposeNotifierProvider<
    CurrentSudokuGameState, SudokuGameState>.internal(
  CurrentSudokuGameState.new,
  name: r'currentSudokuGameStateProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentSudokuGameStateHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentSudokuGameState = AutoDisposeNotifier<SudokuGameState>;
String _$currentInputSudokuIndexHash() =>
    r'4f8c4f5c64f25b17518aa42ec7bfa106ced1deff';

/// 当前正在输入的数独索引
///
/// Copied from [CurrentInputSudokuIndex].
@ProviderFor(CurrentInputSudokuIndex)
final currentInputSudokuIndexProvider =
    AutoDisposeNotifierProvider<CurrentInputSudokuIndex, SudokuIndex?>.internal(
  CurrentInputSudokuIndex.new,
  name: r'currentInputSudokuIndexProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentInputSudokuIndexHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentInputSudokuIndex = AutoDisposeNotifier<SudokuIndex?>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
