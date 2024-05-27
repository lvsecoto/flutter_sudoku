import 'package:dartx/dartx.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'item/item.dart';
import 'background.dart';

export 'input/input.dart';

class SudokuPlayingWidget extends ConsumerWidget {
  /// 数独游戏进行显示组件，大小是正方形
  ///
  /// 它会尽可能的扩展自身的大小，以适配父容器：
  /// 假如父容器给出的约束，高大于宽，则垂直居中内容，宽最大
  /// 假如父容器给出的约束，宽大于高，则水平居中内容，高最大
  const SudokuPlayingWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = provider.watchSudokuNumbersCount(ref);
    final gridRows = provider.watchSudokuMatrixDimension(ref);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: _FillCenter(
        child: SudokuBackgroundWidget(
          child: GridView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: gridRows,
              // 每个格子都是正方形
              childAspectRatio: 1 / 1,
            ),
            itemCount: count,
            itemBuilder: (context, index) => Consumer(
              builder: (context, ref, _) => SudokuNumberItemWidget(
                index: provider.getSudokuNumberIndex(ref, index),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FillCenter extends StatelessWidget {
  const _FillCenter({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      if (constraint.maxHeight > constraint.maxWidth) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [child],
        );
      } else {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: constraint.maxHeight,
              child: child,
            ),
          ],
        );
      }
    });
  }
}
