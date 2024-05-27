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
        title: _LoadSudokuState(
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
      body: const _LoadSudokuState(
        child: SafeArea(
          bottom: true,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: SudokuPlayingWidget(),
              ),
              _FitCenter(
                child: SudokuInputWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoadSudokuState extends ConsumerWidget {
  const _LoadSudokuState({
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEmpty = provider.watchSudokuIsEmpty(ref);
    return AnimatedVisibilityWidget(
      isVisible: !isEmpty,
      animationWidgetBuilder:
          AnimatedVisibilityWidget.fadeAnimationWidgetBuilder,
      child: child,
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
    return LayoutBuilder(
      builder: (context, constraint) {
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
      }
    );
  }
}
