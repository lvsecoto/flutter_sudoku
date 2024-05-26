part of 'use_case.dart';

extension RelatedIndexEx on SudokuIndex {
  List<SudokuIndex> get relatedIndexes {
    final row = index % matrix.row;
    // 同一列
    final sameRow = List.generate(
      matrix.dimension,
      (i) => SudokuIndex(
        matrix: matrix,
        index: i * matrix.dimension + row,
      ),
      growable: true,
    );

    final column = index ~/ matrix.column;
    // 同一行
    final sameColumn = List.generate(
      matrix.dimension,
      (i) => SudokuIndex(
        matrix: matrix,
        index: column * matrix.dimension + i,
      ),
      growable: true,
    );

    // 同一个分组
    final groupDimension = sqrt(matrix.dimension).toInt();
    final groupRow = row ~/ groupDimension;
    final groupColumn = column ~/ groupDimension;

    final sameGroup = List.generate(matrix.dimension, (i) {
      final index = (groupColumn * groupDimension + i ~/ groupDimension) *
          matrix.dimension + (groupRow * groupDimension + i % groupDimension);
      return SudokuIndex(matrix: matrix, index: index);
    }, growable: true)
      ..remove(this);

    return [
      ...sameRow,
      ...sameColumn,
      ...sameGroup,
    ];
  }
}
