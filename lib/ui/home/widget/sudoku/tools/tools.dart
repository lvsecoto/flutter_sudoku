import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'tool_redo_action_widget.dart';
import 'tool_undo_action_widget.dart';
import 'tool_erase_mode_widget.dart';
import 'tool_tip_mode_widget.dart';

class SudokuToolsWidget extends StatelessWidget {

  /// 数独小工具组件
  const SudokuToolsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Gap(16),
        ToolUndoActionWidget(),
        Gap(8),
        ToolRedoActionWidget(),
        Spacer(),
        ToolTipModeWidget(),
        Gap(8),
        ToolEraseModeWidget(),
        Gap(16),
      ],
    );
  }
}
