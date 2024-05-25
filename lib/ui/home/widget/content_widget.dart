import 'package:flutter/material.dart';
import 'sudoku/sudoku.dart';

class ContentWidget extends StatelessWidget {
  const ContentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('数独'),
      ),
      body: const SudokuPlayingWidget(),
    );
  }
}
