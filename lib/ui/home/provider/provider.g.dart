// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SudokuGameHistoryImpl _$$SudokuGameHistoryImplFromJson(
        Map<String, dynamic> json) =>
    _$SudokuGameHistoryImpl(
      gameState:
          SudokuGameState.fromJson(json['gameState'] as Map<String, dynamic>),
      inputIndex: json['inputIndex'] == null
          ? null
          : SudokuIndex.fromJson(json['inputIndex'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SudokuGameHistoryImplToJson(
        _$SudokuGameHistoryImpl instance) =>
    <String, dynamic>{
      'gameState': instance.gameState,
      'inputIndex': instance.inputIndex,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeTitleHash() => r'a20bde8b644d5ae150a6b88c03866e8a65ea6bbe';

/// See also [homeTitle].
@ProviderFor(homeTitle)
final homeTitleProvider = AutoDisposeProvider<String>.internal(
  homeTitle,
  name: r'homeTitleProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$homeTitleHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HomeTitleRef = AutoDisposeProviderRef<String>;
String _$sudokuValidationHash() => r'09cfeabb3638c73fd3dbfc5db8affe4096044e5d';

/// 数独校验结果
///
/// Copied from [sudokuValidation].
@ProviderFor(sudokuValidation)
final sudokuValidationProvider = AutoDisposeProvider<SudokuValidation>.internal(
  sudokuValidation,
  name: r'sudokuValidationProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sudokuValidationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SudokuValidationRef = AutoDisposeProviderRef<SudokuValidation>;
String _$sudokuNumberColorHash() => r'9cbec77b0c22547157750e911edaf2ff1c0ba01a';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// 根据索引，决定数字的文本颜色
///
/// Copied from [sudokuNumberColor].
@ProviderFor(sudokuNumberColor)
const sudokuNumberColorProvider = SudokuNumberColorFamily();

/// 根据索引，决定数字的文本颜色
///
/// Copied from [sudokuNumberColor].
class SudokuNumberColorFamily extends Family<SudokuNumberColorState> {
  /// 根据索引，决定数字的文本颜色
  ///
  /// Copied from [sudokuNumberColor].
  const SudokuNumberColorFamily();

  /// 根据索引，决定数字的文本颜色
  ///
  /// Copied from [sudokuNumberColor].
  SudokuNumberColorProvider call(
    SudokuIndex index,
  ) {
    return SudokuNumberColorProvider(
      index,
    );
  }

  @override
  SudokuNumberColorProvider getProviderOverride(
    covariant SudokuNumberColorProvider provider,
  ) {
    return call(
      provider.index,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sudokuNumberColorProvider';
}

/// 根据索引，决定数字的文本颜色
///
/// Copied from [sudokuNumberColor].
class SudokuNumberColorProvider
    extends AutoDisposeProvider<SudokuNumberColorState> {
  /// 根据索引，决定数字的文本颜色
  ///
  /// Copied from [sudokuNumberColor].
  SudokuNumberColorProvider(
    SudokuIndex index,
  ) : this._internal(
          (ref) => sudokuNumberColor(
            ref as SudokuNumberColorRef,
            index,
          ),
          from: sudokuNumberColorProvider,
          name: r'sudokuNumberColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sudokuNumberColorHash,
          dependencies: SudokuNumberColorFamily._dependencies,
          allTransitiveDependencies:
              SudokuNumberColorFamily._allTransitiveDependencies,
          index: index,
        );

  SudokuNumberColorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final SudokuIndex index;

  @override
  Override overrideWith(
    SudokuNumberColorState Function(SudokuNumberColorRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SudokuNumberColorProvider._internal(
        (ref) => create(ref as SudokuNumberColorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SudokuNumberColorState> createElement() {
    return _SudokuNumberColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SudokuNumberColorProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SudokuNumberColorRef on AutoDisposeProviderRef<SudokuNumberColorState> {
  /// The parameter `index` of this provider.
  SudokuIndex get index;
}

class _SudokuNumberColorProviderElement
    extends AutoDisposeProviderElement<SudokuNumberColorState>
    with SudokuNumberColorRef {
  _SudokuNumberColorProviderElement(super.provider);

  @override
  SudokuIndex get index => (origin as SudokuNumberColorProvider).index;
}

String _$inputRelatedIndexesHash() =>
    r'390a689d86a61a4c45ff01497553f2f5f6c7c13c';

/// 和当前输入中的索引，相关的索引
///
/// Copied from [inputRelatedIndexes].
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
String _$sudokuBackgroundColorHash() =>
    r'd171e46bab9b5fb7878b042f1ba39ee6759ba52a';

/// 根据索引，决定数字的背景颜色
///
/// Copied from [sudokuBackgroundColor].
@ProviderFor(sudokuBackgroundColor)
const sudokuBackgroundColorProvider = SudokuBackgroundColorFamily();

/// 根据索引，决定数字的背景颜色
///
/// Copied from [sudokuBackgroundColor].
class SudokuBackgroundColorFamily extends Family<SudokuBackgroundColorState> {
  /// 根据索引，决定数字的背景颜色
  ///
  /// Copied from [sudokuBackgroundColor].
  const SudokuBackgroundColorFamily();

  /// 根据索引，决定数字的背景颜色
  ///
  /// Copied from [sudokuBackgroundColor].
  SudokuBackgroundColorProvider call(
    SudokuIndex index,
  ) {
    return SudokuBackgroundColorProvider(
      index,
    );
  }

  @override
  SudokuBackgroundColorProvider getProviderOverride(
    covariant SudokuBackgroundColorProvider provider,
  ) {
    return call(
      provider.index,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'sudokuBackgroundColorProvider';
}

/// 根据索引，决定数字的背景颜色
///
/// Copied from [sudokuBackgroundColor].
class SudokuBackgroundColorProvider
    extends AutoDisposeProvider<SudokuBackgroundColorState> {
  /// 根据索引，决定数字的背景颜色
  ///
  /// Copied from [sudokuBackgroundColor].
  SudokuBackgroundColorProvider(
    SudokuIndex index,
  ) : this._internal(
          (ref) => sudokuBackgroundColor(
            ref as SudokuBackgroundColorRef,
            index,
          ),
          from: sudokuBackgroundColorProvider,
          name: r'sudokuBackgroundColorProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$sudokuBackgroundColorHash,
          dependencies: SudokuBackgroundColorFamily._dependencies,
          allTransitiveDependencies:
              SudokuBackgroundColorFamily._allTransitiveDependencies,
          index: index,
        );

  SudokuBackgroundColorProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.index,
  }) : super.internal();

  final SudokuIndex index;

  @override
  Override overrideWith(
    SudokuBackgroundColorState Function(SudokuBackgroundColorRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: SudokuBackgroundColorProvider._internal(
        (ref) => create(ref as SudokuBackgroundColorRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        index: index,
      ),
    );
  }

  @override
  AutoDisposeProviderElement<SudokuBackgroundColorState> createElement() {
    return _SudokuBackgroundColorProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SudokuBackgroundColorProvider && other.index == index;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, index.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin SudokuBackgroundColorRef
    on AutoDisposeProviderRef<SudokuBackgroundColorState> {
  /// The parameter `index` of this provider.
  SudokuIndex get index;
}

class _SudokuBackgroundColorProviderElement
    extends AutoDisposeProviderElement<SudokuBackgroundColorState>
    with SudokuBackgroundColorRef {
  _SudokuBackgroundColorProviderElement(super.provider);

  @override
  SudokuIndex get index => (origin as SudokuBackgroundColorProvider).index;
}

String _$isHomeInitializedHash() => r'51247083c77fb445b90aa2fc889e8590b06645dd';

/// See also [_IsHomeInitialized].
@ProviderFor(_IsHomeInitialized)
final _isHomeInitializedProvider =
    AutoDisposeNotifierProvider<_IsHomeInitialized, bool>.internal(
  _IsHomeInitialized.new,
  name: r'_isHomeInitializedProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$isHomeInitializedHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$IsHomeInitialized = AutoDisposeNotifier<bool>;
String _$currentSudokuGameStateHash() =>
    r'4b4505a7d5da44a722ad5b657ac3a1d557e555a3';

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
    r'2a59bcfeb42959c83873069d4bc531ba523c8606';

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
String _$currentSudokuGameHistoryStackHash() =>
    r'65fb114decfc422dd8af75a988f991d462d3f9f7';

/// See also [CurrentSudokuGameHistoryStack].
@ProviderFor(CurrentSudokuGameHistoryStack)
final currentSudokuGameHistoryStackProvider = AutoDisposeNotifierProvider<
    CurrentSudokuGameHistoryStack, SudokuGameHistoryStack>.internal(
  CurrentSudokuGameHistoryStack.new,
  name: r'currentSudokuGameHistoryStackProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentSudokuGameHistoryStackHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$CurrentSudokuGameHistoryStack
    = AutoDisposeNotifier<SudokuGameHistoryStack>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
