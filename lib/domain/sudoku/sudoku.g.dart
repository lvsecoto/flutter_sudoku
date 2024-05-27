// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sudoku.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SudokuNumberImpl _$$SudokuNumberImplFromJson(Map<String, dynamic> json) =>
    _$SudokuNumberImpl(
      (json['number'] as num).toInt(),
    );

Map<String, dynamic> _$$SudokuNumberImplToJson(_$SudokuNumberImpl instance) =>
    <String, dynamic>{
      'number': instance.number,
    };

_$CompletedSudokuImpl _$$CompletedSudokuImplFromJson(
        Map<String, dynamic> json) =>
    _$CompletedSudokuImpl(
      numbers: (json['numbers'] as List<dynamic>)
          .map((e) => SudokuNumber.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CompletedSudokuImplToJson(
        _$CompletedSudokuImpl instance) =>
    <String, dynamic>{
      'numbers': instance.numbers,
    };

_$PartSudokuImpl _$$PartSudokuImplFromJson(Map<String, dynamic> json) =>
    _$PartSudokuImpl(
      numbers: (json['numbers'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : SudokuNumber.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PartSudokuImplToJson(_$PartSudokuImpl instance) =>
    <String, dynamic>{
      'numbers': instance.numbers,
    };

_$SudokuIndexImpl _$$SudokuIndexImplFromJson(Map<String, dynamic> json) =>
    _$SudokuIndexImpl(
      matrix: SudokuMatrix.fromJson(json['matrix'] as Map<String, dynamic>),
      index: (json['index'] as num).toInt(),
    );

Map<String, dynamic> _$$SudokuIndexImplToJson(_$SudokuIndexImpl instance) =>
    <String, dynamic>{
      'matrix': instance.matrix,
      'index': instance.index,
    };

_$SudokuMatrixImpl _$$SudokuMatrixImplFromJson(Map<String, dynamic> json) =>
    _$SudokuMatrixImpl(
      level: $enumDecodeNullable(_$SudokuLevelEnumMap, json['level']) ??
          SudokuLevel.easy,
      dimension: (json['dimension'] as num?)?.toInt() ?? 9,
    );

Map<String, dynamic> _$$SudokuMatrixImplToJson(_$SudokuMatrixImpl instance) =>
    <String, dynamic>{
      'level': _$SudokuLevelEnumMap[instance.level]!,
      'dimension': instance.dimension,
    };

const _$SudokuLevelEnumMap = {
  SudokuLevel.easy: 'easy',
  SudokuLevel.medium: 'medium',
  SudokuLevel.hard: 'hard',
  SudokuLevel.expert: 'expert',
};

_$SudokuGamePuzzleImpl _$$SudokuGamePuzzleImplFromJson(
        Map<String, dynamic> json) =>
    _$SudokuGamePuzzleImpl(
      masked: PartSudoku.fromJson(json['masked'] as Map<String, dynamic>),
      plain: CompletedSudoku.fromJson(json['plain'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SudokuGamePuzzleImplToJson(
        _$SudokuGamePuzzleImpl instance) =>
    <String, dynamic>{
      'masked': instance.masked,
      'plain': instance.plain,
    };

_$SudokuGameStateImpl _$$SudokuGameStateImplFromJson(
        Map<String, dynamic> json) =>
    _$SudokuGameStateImpl(
      id: (json['id'] as num).toInt(),
      matrix: SudokuMatrix.fromJson(json['matrix'] as Map<String, dynamic>),
      puzzle: SudokuGamePuzzle.fromJson(json['puzzle'] as Map<String, dynamic>),
      solution: PartSudoku.fromJson(json['solution'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SudokuGameStateImplToJson(
        _$SudokuGameStateImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'matrix': instance.matrix,
      'puzzle': instance.puzzle,
      'solution': instance.solution,
    };

_$SudokuValidationImpl _$$SudokuValidationImplFromJson(
        Map<String, dynamic> json) =>
    _$SudokuValidationImpl(
      invalid: (json['invalid'] as List<dynamic>)
          .map((e) => SudokuIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
      completed: (json['completed'] as List<dynamic>)
          .map((e) => SudokuIndex.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SudokuValidationImplToJson(
        _$SudokuValidationImpl instance) =>
    <String, dynamic>{
      'invalid': instance.invalid,
      'completed': instance.completed,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$sudokuManagerHash() => r'01922e305ddbda048eeef3868854f9637d3ea499';

/// See also [sudokuManager].
@ProviderFor(sudokuManager)
final sudokuManagerProvider = AutoDisposeProvider<SudokuManager>.internal(
  sudokuManager,
  name: r'sudokuManagerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$sudokuManagerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef SudokuManagerRef = AutoDisposeProviderRef<SudokuManager>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
