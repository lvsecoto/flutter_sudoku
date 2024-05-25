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
String _$currentSudokuGameStateHash() =>
    r'18baab9381e746a37b2c7ac57ad8a7e6b05ef380';

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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
