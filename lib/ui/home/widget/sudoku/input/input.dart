import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SudokuInputWidget extends ConsumerWidget {
  /// 数独数字输入组件
  const SudokuInputWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final numbers = provider.watchSudokuInputNumbers(ref);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: _Indicator(
        child: Row(
          children: [
            ...numbers.map(
              (it) => Expanded(
                child: AspectRatio(
                  aspectRatio: 1,
                  child: _InputNumber(
                    number: it,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InputNumber extends ConsumerWidget {
  /// 输入的数字
  const _InputNumber({
    required this.number,
  });

  final provider.SudokuNumber number;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return InkWell(
      onTap: () {
        provider.actionFillInputSudokuNumber(ref, number);
      },
      child: FittedBox(
        child: Text(number.number.toString()),
      ),
    );
  }
}

class _Indicator extends HookConsumerWidget {
  /// 根据选中的数字，突出显示这一项
  const _Indicator({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = provider.watchSelectedSudokuNumbersIndex(ref);
    final positionController = useAnimationController(
      duration: Durations.medium4,
      upperBound: double.infinity,
    );
    final fadeController = useAnimationController(
      duration: Durations.medium4,
    );
    final prevIndex = usePrevious(index);
    useMemoized(() {
      if (index != -1) {
        if (prevIndex != -1) {
          positionController.animateTo(
            index.toDouble(),
            curve: Curves.fastOutSlowIn,
          );
        } else {
          positionController.value = index.toDouble();
        }
        fadeController.forward();
      } else {
        fadeController.reverse();
      }
    }, [index]);
    return RepaintBoundary(
      child: CustomPaint(
        painter: _Painter(
          positionController,
          fadeController,
          color: Theme.of(context).colorScheme.primary,
        ),
        child: child,
      ),
    );
  }
}

class _Painter extends CustomPainter {
  _Painter(
    this.position,
    this.fade, {
    required this.color,
  }) : super(repaint: Listenable.merge([position, fade]));

  final Color color;
  final AnimationController position;
  final AnimationController fade;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.height / 2;
    final max = size.width / size.height;
    canvas.drawCircle(
      Offset(
        radius + size.width * (position.value / max),
        radius,
      ),
      radius,
      Paint()
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4
        ..color = color.withOpacity(fade.value),
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
