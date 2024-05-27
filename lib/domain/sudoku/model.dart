part of 'sudoku.dart';

/// 难度
enum SudokuLevel {
  easy,
  medium,
  hard,
  expert,
  ;
}

/// 数独数字
@freezed
class SudokuNumber with _$SudokuNumber {
  const factory SudokuNumber(
    int number,
  ) = _SudokuNumber;

  factory SudokuNumber.fromJson(Map<String, dynamic> json) =>
      _$SudokuNumberFromJson(json);
}

/// 数独抽象
abstract class Sudoku<T extends SudokuNumber?> {
  List<T> get numbers;

  /// 生成一个完全为空的数独序列
  static PartSudoku empty() {
    return PartSudoku(
      numbers: List.filled(81, null),
    );
  }
}

/// 数独可以提供的基本操作
extension SudokuEx<T extends SudokuNumber?> on Sudoku<T> {
  /// 用索引获取数独数字
  T getNumber(SudokuIndex index) {
    return numbers.elementAtOrNull(index.index) as T;
  }
}

@freezed
class CompletedSudoku with _$CompletedSudoku implements Sudoku<SudokuNumber> {
  /// 完整的数独序列，每一个数字都不为空
  const factory CompletedSudoku({
    required List<SudokuNumber> numbers,
  }) = _CompletedSudoku;

  factory CompletedSudoku.fromJson(Map<String, dynamic> json) =>
      _$CompletedSudokuFromJson(json);
}

@freezed
class PartSudoku with _$PartSudoku implements Sudoku<SudokuNumber?> {
  /// 部分填充的数独，中间空了一些数字
  const factory PartSudoku({
    required List<SudokuNumber?> numbers,
  }) = _PartSudoku;

  factory PartSudoku.fromJson(Map<String, dynamic> json) =>
      _$PartSudokuFromJson(json);
}

@freezed
class SudokuIndex with _$SudokuIndex {
  /// 数独数字索引，对数独数字进行定位
  const factory SudokuIndex({
    required SudokuMatrix matrix,

    /// 直接用索引定位
    required int index,
  }) = _SudokuIndex;

  factory SudokuIndex.fromJson(Map<String, dynamic> json) =>
      _$SudokuIndexFromJson(json);
}

@freezed
class SudokuMatrix with _$SudokuMatrix {
  const SudokuMatrix._();

  /// 数独的大小规格，默认为9 * 9
  const factory SudokuMatrix({
    /// 难度
    @Default(SudokuLevel.easy) SudokuLevel level,
    @Default(9) int dimension,
  }) = _SudokuMatrix;

  factory SudokuMatrix.fromJson(Map<String, dynamic> json) =>
      _$SudokuMatrixFromJson(json);

  /// 行
  int get column => dimension;

  /// 列
  int get row => dimension;

  /// 总数
  int get count => column * row;
}

@freezed
class SudokuGamePuzzle with _$SudokuGamePuzzle {
  /// 数独游戏的谜题
  const factory SudokuGamePuzzle({
    /// 挖空了的数独
    required PartSudoku masked,

    /// 完整的数独
    required CompletedSudoku plain,
  }) = _SudokuGamePuzzle;

  factory SudokuGamePuzzle.fromJson(Map<String, dynamic> json) =>
      _$SudokuGamePuzzleFromJson(json);
}

@freezed
class SudokuGameState with _$SudokuGameState {
  static const int emptyId = -1;

  /// 数独的游戏状态
  const factory SudokuGameState({
    /// 游戏的id
    required final int id,

    /// 数独的规格
    required final SudokuMatrix matrix,

    /// 数独的谜题
    required final SudokuGamePuzzle puzzle,

    /// 用户数独解决状态
    required PartSudoku solution,
  }) = _SudokuGameState;

  static SudokuGameState empty() {
    return const SudokuGameState(
      id: emptyId,
      solution: PartSudoku(numbers: []),
      matrix: SudokuMatrix(),
      puzzle: SudokuGamePuzzle(
        plain: CompletedSudoku(
          numbers: [],
        ),
        masked: PartSudoku(
          numbers: [],
        ),
      ),
    );
  }

  factory SudokuGameState.fromJson(Map<String, dynamic> json) =>
      _$SudokuGameStateFromJson(json);
}

@freezed
class SudokuValidation with _$SudokuValidation {
  /// 数独校验结果
  const factory SudokuValidation({
    /// 不合法的索引
    required List<SudokuIndex> invalid,

    /// 已经完成的索引
    required List<SudokuIndex> completed,
  }) = _SudokuValidation;

  factory SudokuValidation.fromJson(Map<String, dynamic> json) =>
      _$SudokuValidationFromJson(json);
}
