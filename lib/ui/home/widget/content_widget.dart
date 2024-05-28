import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sudoku/ui/common/common.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'sudoku/sudoku.dart';
import 'actions/actions.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _LoadGameState(
          child: Consumer(
            builder: (context, ref, _) =>
                Text(ref.watch(provider.homeTitleProvider)),
          ),
        ),
        actions: const [
          ResetGameActionWidget(),
          CreateGameActionWidget(),
        ],
      ),
      body: const _LoadGameState(
        child: SafeArea(
          bottom: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SudokuPlayingWidget(),
              ),
              _FitCenter(
                child: Column(
                  children: [
                    SudokuToolsWidget(),
                    SudokuInputWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadGameState extends ConsumerWidget {
  /// 在加载完毕后，才显示界面
  const _LoadGameState({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isInitialized = provider.watchIsInitialized(ref);
    return AnimatedVisibilityWidget(
      isVisible: isInitialized,
      animationWidgetBuilder:
          AnimatedVisibilityWidget.fadeAnimationWidgetBuilder,
      child: isInitialized ? child : const SizedBox.shrink(),
    );
  }
}

class _FitCenter extends StatelessWidget {
  const _FitCenter({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraint) {
      final width = constraint.maxWidth.coerceAtMost(600);
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: width,
            child: child,
          ),
        ],
      );
    });
  }
}
