// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SudokuGameHistory _$SudokuGameHistoryFromJson(Map<String, dynamic> json) {
  return _SudokuGameHistory.fromJson(json);
}

/// @nodoc
mixin _$SudokuGameHistory {
  /// 当前的游戏状态
  SudokuGameState get gameState => throw _privateConstructorUsedError;

  /// 当前正在输入的索引
  SudokuIndex? get inputIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SudokuGameHistoryCopyWith<SudokuGameHistory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SudokuGameHistoryCopyWith<$Res> {
  factory $SudokuGameHistoryCopyWith(
          SudokuGameHistory value, $Res Function(SudokuGameHistory) then) =
      _$SudokuGameHistoryCopyWithImpl<$Res, SudokuGameHistory>;
  @useResult
  $Res call({SudokuGameState gameState, SudokuIndex? inputIndex});

  $SudokuGameStateCopyWith<$Res> get gameState;
  $SudokuIndexCopyWith<$Res>? get inputIndex;
}

/// @nodoc
class _$SudokuGameHistoryCopyWithImpl<$Res, $Val extends SudokuGameHistory>
    implements $SudokuGameHistoryCopyWith<$Res> {
  _$SudokuGameHistoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameState = null,
    Object? inputIndex = freezed,
  }) {
    return _then(_value.copyWith(
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as SudokuGameState,
      inputIndex: freezed == inputIndex
          ? _value.inputIndex
          : inputIndex // ignore: cast_nullable_to_non_nullable
              as SudokuIndex?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SudokuGameStateCopyWith<$Res> get gameState {
    return $SudokuGameStateCopyWith<$Res>(_value.gameState, (value) {
      return _then(_value.copyWith(gameState: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SudokuIndexCopyWith<$Res>? get inputIndex {
    if (_value.inputIndex == null) {
      return null;
    }

    return $SudokuIndexCopyWith<$Res>(_value.inputIndex!, (value) {
      return _then(_value.copyWith(inputIndex: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SudokuGameHistoryImplCopyWith<$Res>
    implements $SudokuGameHistoryCopyWith<$Res> {
  factory _$$SudokuGameHistoryImplCopyWith(_$SudokuGameHistoryImpl value,
          $Res Function(_$SudokuGameHistoryImpl) then) =
      __$$SudokuGameHistoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SudokuGameState gameState, SudokuIndex? inputIndex});

  @override
  $SudokuGameStateCopyWith<$Res> get gameState;
  @override
  $SudokuIndexCopyWith<$Res>? get inputIndex;
}

/// @nodoc
class __$$SudokuGameHistoryImplCopyWithImpl<$Res>
    extends _$SudokuGameHistoryCopyWithImpl<$Res, _$SudokuGameHistoryImpl>
    implements _$$SudokuGameHistoryImplCopyWith<$Res> {
  __$$SudokuGameHistoryImplCopyWithImpl(_$SudokuGameHistoryImpl _value,
      $Res Function(_$SudokuGameHistoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gameState = null,
    Object? inputIndex = freezed,
  }) {
    return _then(_$SudokuGameHistoryImpl(
      gameState: null == gameState
          ? _value.gameState
          : gameState // ignore: cast_nullable_to_non_nullable
              as SudokuGameState,
      inputIndex: freezed == inputIndex
          ? _value.inputIndex
          : inputIndex // ignore: cast_nullable_to_non_nullable
              as SudokuIndex?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SudokuGameHistoryImpl implements _SudokuGameHistory {
  const _$SudokuGameHistoryImpl(
      {required this.gameState, required this.inputIndex});

  factory _$SudokuGameHistoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$SudokuGameHistoryImplFromJson(json);

  /// 当前的游戏状态
  @override
  final SudokuGameState gameState;

  /// 当前正在输入的索引
  @override
  final SudokuIndex? inputIndex;

  @override
  String toString() {
    return 'SudokuGameHistory(gameState: $gameState, inputIndex: $inputIndex)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SudokuGameHistoryImpl &&
            (identical(other.gameState, gameState) ||
                other.gameState == gameState) &&
            (identical(other.inputIndex, inputIndex) ||
                other.inputIndex == inputIndex));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gameState, inputIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SudokuGameHistoryImplCopyWith<_$SudokuGameHistoryImpl> get copyWith =>
      __$$SudokuGameHistoryImplCopyWithImpl<_$SudokuGameHistoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SudokuGameHistoryImplToJson(
      this,
    );
  }
}

abstract class _SudokuGameHistory implements SudokuGameHistory {
  const factory _SudokuGameHistory(
      {required final SudokuGameState gameState,
      required final SudokuIndex? inputIndex}) = _$SudokuGameHistoryImpl;

  factory _SudokuGameHistory.fromJson(Map<String, dynamic> json) =
      _$SudokuGameHistoryImpl.fromJson;

  @override

  /// 当前的游戏状态
  SudokuGameState get gameState;
  @override

  /// 当前正在输入的索引
  SudokuIndex? get inputIndex;
  @override
  @JsonKey(ignore: true)
  _$$SudokuGameHistoryImplCopyWith<_$SudokuGameHistoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
