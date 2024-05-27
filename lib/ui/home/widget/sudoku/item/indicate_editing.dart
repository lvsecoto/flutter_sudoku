import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/ui/common/animated_visibility_widget.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class IndicateSudokuNumberEditingWidget extends HookConsumerWidget {
  /// 标记数独正在输入
  const IndicateSudokuNumberEditingWidget({
    super.key,
    required this.index,
    required this.child,
  });

  final provider.SudokuIndex index;

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEditing = provider.watchIsSudokuIndexEditing(ref, index);
    // 标志是否显示，因为淡出淡入需要时间，这个状态用来表示实际显示，而不是逻辑显示
    final isIndicatorVisible = useState(isEditing);
    return Stack(
      fit: StackFit.expand,
      children: [
        child,
        Positioned.fill(
          child: AnimatedVisibilityWidget(
            isVisible: isEditing,
            animationWidgetBuilder:
                AnimatedVisibilityWidget.fadeAnimationWidgetBuilder,
            onDone: (visible) {
              SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
                isIndicatorVisible.value = visible;
              });
            },
            child: isEditing || isIndicatorVisible.value
                ? const _Indicator()
                // 实际没显示，就不要加载指示器，因为指示器时动画
                : const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}

class _Indicator extends StatelessWidget {
  /// 一个圆圈，用于标记正在编辑的数字
  const _Indicator();

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: Swing(
        duration: Durations.medium2,
        child: Container(
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ),
        builder: (context, controller, child) => ScaleTransition(
            scale: Tween(begin: 0.8, end: 1.0).animate(controller),
            child: child,
          ),
      ),
    );
  }
}
