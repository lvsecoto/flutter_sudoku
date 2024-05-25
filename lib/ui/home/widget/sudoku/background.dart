import 'dart:math';

import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SudokuBackgroundWidget extends ConsumerWidget {
  const SudokuBackgroundWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dimension = provider.watchSudokuMatrixDimension(ref);
    final color = Theme.of(context).colorScheme.primary;
    return CustomPaint(
      painter: _Painter(
        color: color,
        dimension: dimension,
      ),
      child: child,
    );
  }
}

class _Painter extends CustomPainter {
  _Painter({
    required this.dimension,
    required this.color,
  });

  final int dimension;

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    // 画外框
    final strongPainter = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = 4;
    final painter = Paint()
      ..style = PaintingStyle.stroke
      ..color = color
      ..strokeWidth = 1;
    canvas.drawRect(
      Rect.fromLTWH(0, 0, size.width, size.height),
      strongPainter,
    );

    // 画内框

    // 每多少条线，就要加强绘制一条线
    final strongLinePerNumOfIndex = sqrt(dimension).toInt();
    final segmentExtends = size.width / dimension;
    for (int i = 1; i < dimension; i++) {
      final bool isStrong = i % strongLinePerNumOfIndex == 0;

      // 画横线
      canvas.drawLine(
        Offset(0, segmentExtends * i),
        Offset(size.width, segmentExtends * i),
        isStrong ? strongPainter : painter,
      );
      // 画竖线
      canvas.drawLine(
        Offset(segmentExtends * i, 0),
        Offset(segmentExtends * i, size.height),
        isStrong ? strongPainter : painter,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // todo 需要优化
    return true;
  }
}
