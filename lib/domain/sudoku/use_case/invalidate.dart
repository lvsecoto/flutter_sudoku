part of 'use_case.dart';

/// 数独数字状态
extension SudokuInvalidate on SudokuGameState {
  /// **不正确**的数独索引
  ///
  /// **不正确**，意思是违法数独规则，不单单是没填对
  ///
  /// 当这个数字还没完成，即没有预先填充，用户也没填充时，返回为空
  SudokuValidation get invalidation {
    final invalid = <SudokuIndex>{};
    final completed = <SudokuIndex>{};

    var dimension = matrix.dimension;
    for (var i = 0; i < dimension; i++) {
      // 行扫描到的数字
      final scannedRow = <SudokuNumber, List<SudokuIndex>>{};
      // 列扫描到的数字
      final scannedColumn = <SudokuNumber, List<SudokuIndex>>{};
      // 组扫描到的数字
      final scannedGroup = <SudokuNumber, List<SudokuIndex>>{};

      for (var j = 0; j < dimension; j++) {
        SudokuNumber? number;
        SudokuIndex index;

        // 检查一行，是否有重复
        index = SudokuIndex(
          matrix: matrix,
          index: i * dimension + j,
        );
        number = getNumber(index);
        if (number != null) {
          scannedRow[number] = [
            ...scannedRow[number] ?? [],
            index,
          ];
        }

        // 检查一列，是否有重复
        index = SudokuIndex(
          matrix: matrix,
          index: j * dimension + i,
        );
        number = getNumber(index);
        if (number != null) {
          scannedColumn[number] = [
            ...scannedColumn[number] ?? [],
            index,
          ];
        }

        // 检查一组，是否有重复
        final groupDimension = sqrt(matrix.dimension).toInt();
        final groupRow = i % groupDimension;
        final groupColumn = i ~/ groupDimension;

        final indexValue =
            (groupColumn * groupDimension + j ~/ groupDimension) *
                    matrix.dimension +
                (groupRow * groupDimension + j % groupDimension);
        index = SudokuIndex(matrix: matrix, index: indexValue);
        number = getNumber(index);
        if (number != null) {
          scannedGroup[number] = [
            ...scannedGroup[number] ?? [],
            index,
          ];
        }

      } // end for j

      // 在行，列，组扫描中，同一数字出现了超过一次的，就是重复了
      invalid.addAll(
          scannedRow.filter((it) => it.value.length > 1).values.flatten());
      invalid.addAll(
          scannedColumn.filter((it) => it.value.length > 1).values.flatten());
      invalid.addAll(
          scannedGroup.filter((it) => it.value.length > 1).values.flatten());

      // 在行，列，组扫描中，扫到的数字总数等同于dimension，就是已经完成的数独
      if (scannedRow.length == matrix.dimension) {
        completed.addAll(scannedRow.values.flatten());
      }
      if (scannedColumn.length == matrix.dimension) {
        completed.addAll(scannedColumn.values.flatten());
      }
      if (scannedGroup.length == matrix.dimension) {
        completed.addAll(scannedGroup.values.flatten());
      }

      scannedRow.clear();
      scannedColumn.clear();
      scannedGroup.clear();
    }
    return SudokuValidation(
      invalid: invalid.toList(),
      completed: completed.toList(),
    );
  }
}
