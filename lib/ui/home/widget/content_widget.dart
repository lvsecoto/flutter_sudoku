import 'package:flutter/material.dart';
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
        title: Consumer(
          builder: (context, ref, _) =>
              Text(ref.watch(provider.homeTitleProvider)),
        ),
        actions: const [
          CreateGameActionWidget(),
        ],
      ),
      body: const SafeArea(
        bottom: true,
        child: Column(
          children: [
            Expanded(
              child: SudokuPlayingWidget(),
            ),
            SudokuInputWidget(),
          ],
        ),
      ),
    );
  }
}
