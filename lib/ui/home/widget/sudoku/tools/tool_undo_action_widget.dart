import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ToolUndoActionWidget extends ConsumerWidget {

  /// 工具：撤销操作
  const ToolUndoActionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canUndo = provider.watchSudokuCanUndo(ref);
    return IconButton(
      onPressed: canUndo ? () {
        provider.actionUndo(ref);
      } : null,
      icon: Icon(MdiIcons.undo),
    );
  }
}
