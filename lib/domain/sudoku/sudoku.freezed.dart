// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sudoku.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SudokuNumber {
  int get number => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SudokuNumberCopyWith<SudokuNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SudokuNumberCopyWith<$Res> {
  factory $SudokuNumberCopyWith(
          SudokuNumber value, $Res Function(SudokuNumber) then) =
      _$SudokuNumberCopyWithImpl<$Res, SudokuNumber>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class _$SudokuNumberCopyWithImpl<$Res, $Val extends SudokuNumber>
    implements $SudokuNumberCopyWith<$Res> {
  _$SudokuNumberCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SudokuNumberImplCopyWith<$Res>
    implements $SudokuNumberCopyWith<$Res> {
  factory _$$SudokuNumberImplCopyWith(
          _$SudokuNumberImpl value, $Res Function(_$SudokuNumberImpl) then) =
      __$$SudokuNumberImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$SudokuNumberImplCopyWithImpl<$Res>
    extends _$SudokuNumberCopyWithImpl<$Res, _$SudokuNumberImpl>
    implements _$$SudokuNumberImplCopyWith<$Res> {
  __$$SudokuNumberImplCopyWithImpl(
      _$SudokuNumberImpl _value, $Res Function(_$SudokuNumberImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$SudokuNumberImpl(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SudokuNumberImpl implements _SudokuNumber {
  const _$SudokuNumberImpl(this.number);

  @override
  final int number;

  @override
  String toString() {
    return 'SudokuNumber(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SudokuNumberImpl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SudokuNumberImplCopyWith<_$SudokuNumberImpl> get copyWith =>
      __$$SudokuNumberImplCopyWithImpl<_$SudokuNumberImpl>(this, _$identity);
}

abstract class _SudokuNumber implements SudokuNumber {
  const factory _SudokuNumber(final int number) = _$SudokuNumberImpl;

  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$SudokuNumberImplCopyWith<_$SudokuNumberImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CompletedSudoku {
  List<SudokuNumber> get numbers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CompletedSudokuCopyWith<CompletedSudoku> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompletedSudokuCopyWith<$Res> {
  factory $CompletedSudokuCopyWith(
          CompletedSudoku value, $Res Function(CompletedSudoku) then) =
      _$CompletedSudokuCopyWithImpl<$Res, CompletedSudoku>;
  @useResult
  $Res call({List<SudokuNumber> numbers});
}

/// @nodoc
class _$CompletedSudokuCopyWithImpl<$Res, $Val extends CompletedSudoku>
    implements $CompletedSudokuCopyWith<$Res> {
  _$CompletedSudokuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
  }) {
    return _then(_value.copyWith(
      numbers: null == numbers
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<SudokuNumber>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CompletedSudokuImplCopyWith<$Res>
    implements $CompletedSudokuCopyWith<$Res> {
  factory _$$CompletedSudokuImplCopyWith(_$CompletedSudokuImpl value,
          $Res Function(_$CompletedSudokuImpl) then) =
      __$$CompletedSudokuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SudokuNumber> numbers});
}

/// @nodoc
class __$$CompletedSudokuImplCopyWithImpl<$Res>
    extends _$CompletedSudokuCopyWithImpl<$Res, _$CompletedSudokuImpl>
    implements _$$CompletedSudokuImplCopyWith<$Res> {
  __$$CompletedSudokuImplCopyWithImpl(
      _$CompletedSudokuImpl _value, $Res Function(_$CompletedSudokuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
  }) {
    return _then(_$CompletedSudokuImpl(
      numbers: null == numbers
          ? _value._numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<SudokuNumber>,
    ));
  }
}

/// @nodoc

class _$CompletedSudokuImpl implements _CompletedSudoku {
  const _$CompletedSudokuImpl({required final List<SudokuNumber> numbers})
      : _numbers = numbers;

  final List<SudokuNumber> _numbers;
  @override
  List<SudokuNumber> get numbers {
    if (_numbers is EqualUnmodifiableListView) return _numbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbers);
  }

  @override
  String toString() {
    return 'CompletedSudoku(numbers: $numbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompletedSudokuImpl &&
            const DeepCollectionEquality().equals(other._numbers, _numbers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_numbers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CompletedSudokuImplCopyWith<_$CompletedSudokuImpl> get copyWith =>
      __$$CompletedSudokuImplCopyWithImpl<_$CompletedSudokuImpl>(
          this, _$identity);
}

abstract class _CompletedSudoku implements CompletedSudoku {
  const factory _CompletedSudoku({required final List<SudokuNumber> numbers}) =
      _$CompletedSudokuImpl;

  @override
  List<SudokuNumber> get numbers;
  @override
  @JsonKey(ignore: true)
  _$$CompletedSudokuImplCopyWith<_$CompletedSudokuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PartSudoku {
  List<SudokuNumber?> get numbers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PartSudokuCopyWith<PartSudoku> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartSudokuCopyWith<$Res> {
  factory $PartSudokuCopyWith(
          PartSudoku value, $Res Function(PartSudoku) then) =
      _$PartSudokuCopyWithImpl<$Res, PartSudoku>;
  @useResult
  $Res call({List<SudokuNumber?> numbers});
}

/// @nodoc
class _$PartSudokuCopyWithImpl<$Res, $Val extends PartSudoku>
    implements $PartSudokuCopyWith<$Res> {
  _$PartSudokuCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
  }) {
    return _then(_value.copyWith(
      numbers: null == numbers
          ? _value.numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<SudokuNumber?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartSudokuImplCopyWith<$Res>
    implements $PartSudokuCopyWith<$Res> {
  factory _$$PartSudokuImplCopyWith(
          _$PartSudokuImpl value, $Res Function(_$PartSudokuImpl) then) =
      __$$PartSudokuImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SudokuNumber?> numbers});
}

/// @nodoc
class __$$PartSudokuImplCopyWithImpl<$Res>
    extends _$PartSudokuCopyWithImpl<$Res, _$PartSudokuImpl>
    implements _$$PartSudokuImplCopyWith<$Res> {
  __$$PartSudokuImplCopyWithImpl(
      _$PartSudokuImpl _value, $Res Function(_$PartSudokuImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numbers = null,
  }) {
    return _then(_$PartSudokuImpl(
      numbers: null == numbers
          ? _value._numbers
          : numbers // ignore: cast_nullable_to_non_nullable
              as List<SudokuNumber?>,
    ));
  }
}

/// @nodoc

class _$PartSudokuImpl implements _PartSudoku {
  const _$PartSudokuImpl({required final List<SudokuNumber?> numbers})
      : _numbers = numbers;

  final List<SudokuNumber?> _numbers;
  @override
  List<SudokuNumber?> get numbers {
    if (_numbers is EqualUnmodifiableListView) return _numbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_numbers);
  }

  @override
  String toString() {
    return 'PartSudoku(numbers: $numbers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartSudokuImpl &&
            const DeepCollectionEquality().equals(other._numbers, _numbers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_numbers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartSudokuImplCopyWith<_$PartSudokuImpl> get copyWith =>
      __$$PartSudokuImplCopyWithImpl<_$PartSudokuImpl>(this, _$identity);
}

abstract class _PartSudoku implements PartSudoku {
  const factory _PartSudoku({required final List<SudokuNumber?> numbers}) =
      _$PartSudokuImpl;

  @override
  List<SudokuNumber?> get numbers;
  @override
  @JsonKey(ignore: true)
  _$$PartSudokuImplCopyWith<_$PartSudokuImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SudokuIndex {
  SudokuMatrix get matrix => throw _privateConstructorUsedError;

  /// 直接用索引定位
  int get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SudokuIndexCopyWith<SudokuIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SudokuIndexCopyWith<$Res> {
  factory $SudokuIndexCopyWith(
          SudokuIndex value, $Res Function(SudokuIndex) then) =
      _$SudokuIndexCopyWithImpl<$Res, SudokuIndex>;
  @useResult
  $Res call({SudokuMatrix matrix, int index});

  $SudokuMatrixCopyWith<$Res> get matrix;
}

/// @nodoc
class _$SudokuIndexCopyWithImpl<$Res, $Val extends SudokuIndex>
    implements $SudokuIndexCopyWith<$Res> {
  _$SudokuIndexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matrix = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      matrix: null == matrix
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as SudokuMatrix,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SudokuMatrixCopyWith<$Res> get matrix {
    return $SudokuMatrixCopyWith<$Res>(_value.matrix, (value) {
      return _then(_value.copyWith(matrix: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SudokuIndexImplCopyWith<$Res>
    implements $SudokuIndexCopyWith<$Res> {
  factory _$$SudokuIndexImplCopyWith(
          _$SudokuIndexImpl value, $Res Function(_$SudokuIndexImpl) then) =
      __$$SudokuIndexImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SudokuMatrix matrix, int index});

  @override
  $SudokuMatrixCopyWith<$Res> get matrix;
}

/// @nodoc
class __$$SudokuIndexImplCopyWithImpl<$Res>
    extends _$SudokuIndexCopyWithImpl<$Res, _$SudokuIndexImpl>
    implements _$$SudokuIndexImplCopyWith<$Res> {
  __$$SudokuIndexImplCopyWithImpl(
      _$SudokuIndexImpl _value, $Res Function(_$SudokuIndexImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matrix = null,
    Object? index = null,
  }) {
    return _then(_$SudokuIndexImpl(
      matrix: null == matrix
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as SudokuMatrix,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SudokuIndexImpl implements _SudokuIndex {
  const _$SudokuIndexImpl({required this.matrix, required this.index});

  @override
  final SudokuMatrix matrix;

  /// 直接用索引定位
  @override
  final int index;

  @override
  String toString() {
    return 'SudokuIndex(matrix: $matrix, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SudokuIndexImpl &&
            (identical(other.matrix, matrix) || other.matrix == matrix) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, matrix, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SudokuIndexImplCopyWith<_$SudokuIndexImpl> get copyWith =>
      __$$SudokuIndexImplCopyWithImpl<_$SudokuIndexImpl>(this, _$identity);
}

abstract class _SudokuIndex implements SudokuIndex {
  const factory _SudokuIndex(
      {required final SudokuMatrix matrix,
      required final int index}) = _$SudokuIndexImpl;

  @override
  SudokuMatrix get matrix;
  @override

  /// 直接用索引定位
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$SudokuIndexImplCopyWith<_$SudokuIndexImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SudokuMatrix {
  int get dimension => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SudokuMatrixCopyWith<SudokuMatrix> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SudokuMatrixCopyWith<$Res> {
  factory $SudokuMatrixCopyWith(
          SudokuMatrix value, $Res Function(SudokuMatrix) then) =
      _$SudokuMatrixCopyWithImpl<$Res, SudokuMatrix>;
  @useResult
  $Res call({int dimension});
}

/// @nodoc
class _$SudokuMatrixCopyWithImpl<$Res, $Val extends SudokuMatrix>
    implements $SudokuMatrixCopyWith<$Res> {
  _$SudokuMatrixCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dimension = null,
  }) {
    return _then(_value.copyWith(
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SudokuMatrixImplCopyWith<$Res>
    implements $SudokuMatrixCopyWith<$Res> {
  factory _$$SudokuMatrixImplCopyWith(
          _$SudokuMatrixImpl value, $Res Function(_$SudokuMatrixImpl) then) =
      __$$SudokuMatrixImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int dimension});
}

/// @nodoc
class __$$SudokuMatrixImplCopyWithImpl<$Res>
    extends _$SudokuMatrixCopyWithImpl<$Res, _$SudokuMatrixImpl>
    implements _$$SudokuMatrixImplCopyWith<$Res> {
  __$$SudokuMatrixImplCopyWithImpl(
      _$SudokuMatrixImpl _value, $Res Function(_$SudokuMatrixImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dimension = null,
  }) {
    return _then(_$SudokuMatrixImpl(
      dimension: null == dimension
          ? _value.dimension
          : dimension // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SudokuMatrixImpl extends _SudokuMatrix {
  const _$SudokuMatrixImpl({this.dimension = 9}) : super._();

  @override
  @JsonKey()
  final int dimension;

  @override
  String toString() {
    return 'SudokuMatrix(dimension: $dimension)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SudokuMatrixImpl &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dimension);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SudokuMatrixImplCopyWith<_$SudokuMatrixImpl> get copyWith =>
      __$$SudokuMatrixImplCopyWithImpl<_$SudokuMatrixImpl>(this, _$identity);
}

abstract class _SudokuMatrix extends SudokuMatrix {
  const factory _SudokuMatrix({final int dimension}) = _$SudokuMatrixImpl;
  const _SudokuMatrix._() : super._();

  @override
  int get dimension;
  @override
  @JsonKey(ignore: true)
  _$$SudokuMatrixImplCopyWith<_$SudokuMatrixImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SudokuGamePuzzle {
  /// 挖空了的数独
  PartSudoku get masked => throw _privateConstructorUsedError;

  /// 完整的数独
  CompletedSudoku get plain => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SudokuGamePuzzleCopyWith<SudokuGamePuzzle> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SudokuGamePuzzleCopyWith<$Res> {
  factory $SudokuGamePuzzleCopyWith(
          SudokuGamePuzzle value, $Res Function(SudokuGamePuzzle) then) =
      _$SudokuGamePuzzleCopyWithImpl<$Res, SudokuGamePuzzle>;
  @useResult
  $Res call({PartSudoku masked, CompletedSudoku plain});

  $PartSudokuCopyWith<$Res> get masked;
  $CompletedSudokuCopyWith<$Res> get plain;
}

/// @nodoc
class _$SudokuGamePuzzleCopyWithImpl<$Res, $Val extends SudokuGamePuzzle>
    implements $SudokuGamePuzzleCopyWith<$Res> {
  _$SudokuGamePuzzleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masked = null,
    Object? plain = null,
  }) {
    return _then(_value.copyWith(
      masked: null == masked
          ? _value.masked
          : masked // ignore: cast_nullable_to_non_nullable
              as PartSudoku,
      plain: null == plain
          ? _value.plain
          : plain // ignore: cast_nullable_to_non_nullable
              as CompletedSudoku,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PartSudokuCopyWith<$Res> get masked {
    return $PartSudokuCopyWith<$Res>(_value.masked, (value) {
      return _then(_value.copyWith(masked: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CompletedSudokuCopyWith<$Res> get plain {
    return $CompletedSudokuCopyWith<$Res>(_value.plain, (value) {
      return _then(_value.copyWith(plain: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SudokuGamePuzzleImplCopyWith<$Res>
    implements $SudokuGamePuzzleCopyWith<$Res> {
  factory _$$SudokuGamePuzzleImplCopyWith(_$SudokuGamePuzzleImpl value,
          $Res Function(_$SudokuGamePuzzleImpl) then) =
      __$$SudokuGamePuzzleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PartSudoku masked, CompletedSudoku plain});

  @override
  $PartSudokuCopyWith<$Res> get masked;
  @override
  $CompletedSudokuCopyWith<$Res> get plain;
}

/// @nodoc
class __$$SudokuGamePuzzleImplCopyWithImpl<$Res>
    extends _$SudokuGamePuzzleCopyWithImpl<$Res, _$SudokuGamePuzzleImpl>
    implements _$$SudokuGamePuzzleImplCopyWith<$Res> {
  __$$SudokuGamePuzzleImplCopyWithImpl(_$SudokuGamePuzzleImpl _value,
      $Res Function(_$SudokuGamePuzzleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masked = null,
    Object? plain = null,
  }) {
    return _then(_$SudokuGamePuzzleImpl(
      masked: null == masked
          ? _value.masked
          : masked // ignore: cast_nullable_to_non_nullable
              as PartSudoku,
      plain: null == plain
          ? _value.plain
          : plain // ignore: cast_nullable_to_non_nullable
              as CompletedSudoku,
    ));
  }
}

/// @nodoc

class _$SudokuGamePuzzleImpl implements _SudokuGamePuzzle {
  const _$SudokuGamePuzzleImpl({required this.masked, required this.plain});

  /// 挖空了的数独
  @override
  final PartSudoku masked;

  /// 完整的数独
  @override
  final CompletedSudoku plain;

  @override
  String toString() {
    return 'SudokuGamePuzzle(masked: $masked, plain: $plain)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SudokuGamePuzzleImpl &&
            (identical(other.masked, masked) || other.masked == masked) &&
            (identical(other.plain, plain) || other.plain == plain));
  }

  @override
  int get hashCode => Object.hash(runtimeType, masked, plain);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SudokuGamePuzzleImplCopyWith<_$SudokuGamePuzzleImpl> get copyWith =>
      __$$SudokuGamePuzzleImplCopyWithImpl<_$SudokuGamePuzzleImpl>(
          this, _$identity);
}

abstract class _SudokuGamePuzzle implements SudokuGamePuzzle {
  const factory _SudokuGamePuzzle(
      {required final PartSudoku masked,
      required final CompletedSudoku plain}) = _$SudokuGamePuzzleImpl;

  @override

  /// 挖空了的数独
  PartSudoku get masked;
  @override

  /// 完整的数独
  CompletedSudoku get plain;
  @override
  @JsonKey(ignore: true)
  _$$SudokuGamePuzzleImplCopyWith<_$SudokuGamePuzzleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SudokuGameState {
  SudokuMatrix get matrix => throw _privateConstructorUsedError;

  /// 数独的谜题
  SudokuGamePuzzle get puzzle => throw _privateConstructorUsedError;

  /// 用户数独解决状态
  PartSudoku get solution => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SudokuGameStateCopyWith<SudokuGameState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SudokuGameStateCopyWith<$Res> {
  factory $SudokuGameStateCopyWith(
          SudokuGameState value, $Res Function(SudokuGameState) then) =
      _$SudokuGameStateCopyWithImpl<$Res, SudokuGameState>;
  @useResult
  $Res call(
      {SudokuMatrix matrix, SudokuGamePuzzle puzzle, PartSudoku solution});

  $SudokuMatrixCopyWith<$Res> get matrix;
  $SudokuGamePuzzleCopyWith<$Res> get puzzle;
  $PartSudokuCopyWith<$Res> get solution;
}

/// @nodoc
class _$SudokuGameStateCopyWithImpl<$Res, $Val extends SudokuGameState>
    implements $SudokuGameStateCopyWith<$Res> {
  _$SudokuGameStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matrix = null,
    Object? puzzle = null,
    Object? solution = null,
  }) {
    return _then(_value.copyWith(
      matrix: null == matrix
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as SudokuMatrix,
      puzzle: null == puzzle
          ? _value.puzzle
          : puzzle // ignore: cast_nullable_to_non_nullable
              as SudokuGamePuzzle,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as PartSudoku,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SudokuMatrixCopyWith<$Res> get matrix {
    return $SudokuMatrixCopyWith<$Res>(_value.matrix, (value) {
      return _then(_value.copyWith(matrix: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SudokuGamePuzzleCopyWith<$Res> get puzzle {
    return $SudokuGamePuzzleCopyWith<$Res>(_value.puzzle, (value) {
      return _then(_value.copyWith(puzzle: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PartSudokuCopyWith<$Res> get solution {
    return $PartSudokuCopyWith<$Res>(_value.solution, (value) {
      return _then(_value.copyWith(solution: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SudokuGameStateImplCopyWith<$Res>
    implements $SudokuGameStateCopyWith<$Res> {
  factory _$$SudokuGameStateImplCopyWith(_$SudokuGameStateImpl value,
          $Res Function(_$SudokuGameStateImpl) then) =
      __$$SudokuGameStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SudokuMatrix matrix, SudokuGamePuzzle puzzle, PartSudoku solution});

  @override
  $SudokuMatrixCopyWith<$Res> get matrix;
  @override
  $SudokuGamePuzzleCopyWith<$Res> get puzzle;
  @override
  $PartSudokuCopyWith<$Res> get solution;
}

/// @nodoc
class __$$SudokuGameStateImplCopyWithImpl<$Res>
    extends _$SudokuGameStateCopyWithImpl<$Res, _$SudokuGameStateImpl>
    implements _$$SudokuGameStateImplCopyWith<$Res> {
  __$$SudokuGameStateImplCopyWithImpl(
      _$SudokuGameStateImpl _value, $Res Function(_$SudokuGameStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? matrix = null,
    Object? puzzle = null,
    Object? solution = null,
  }) {
    return _then(_$SudokuGameStateImpl(
      matrix: null == matrix
          ? _value.matrix
          : matrix // ignore: cast_nullable_to_non_nullable
              as SudokuMatrix,
      puzzle: null == puzzle
          ? _value.puzzle
          : puzzle // ignore: cast_nullable_to_non_nullable
              as SudokuGamePuzzle,
      solution: null == solution
          ? _value.solution
          : solution // ignore: cast_nullable_to_non_nullable
              as PartSudoku,
    ));
  }
}

/// @nodoc

class _$SudokuGameStateImpl implements _SudokuGameState {
  const _$SudokuGameStateImpl(
      {required this.matrix, required this.puzzle, required this.solution});

  @override
  final SudokuMatrix matrix;

  /// 数独的谜题
  @override
  final SudokuGamePuzzle puzzle;

  /// 用户数独解决状态
  @override
  final PartSudoku solution;

  @override
  String toString() {
    return 'SudokuGameState(matrix: $matrix, puzzle: $puzzle, solution: $solution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SudokuGameStateImpl &&
            (identical(other.matrix, matrix) || other.matrix == matrix) &&
            (identical(other.puzzle, puzzle) || other.puzzle == puzzle) &&
            (identical(other.solution, solution) ||
                other.solution == solution));
  }

  @override
  int get hashCode => Object.hash(runtimeType, matrix, puzzle, solution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SudokuGameStateImplCopyWith<_$SudokuGameStateImpl> get copyWith =>
      __$$SudokuGameStateImplCopyWithImpl<_$SudokuGameStateImpl>(
          this, _$identity);
}

abstract class _SudokuGameState implements SudokuGameState {
  const factory _SudokuGameState(
      {required final SudokuMatrix matrix,
      required final SudokuGamePuzzle puzzle,
      required final PartSudoku solution}) = _$SudokuGameStateImpl;

  @override
  SudokuMatrix get matrix;
  @override

  /// 数独的谜题
  SudokuGamePuzzle get puzzle;
  @override

  /// 用户数独解决状态
  PartSudoku get solution;
  @override
  @JsonKey(ignore: true)
  _$$SudokuGameStateImplCopyWith<_$SudokuGameStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
