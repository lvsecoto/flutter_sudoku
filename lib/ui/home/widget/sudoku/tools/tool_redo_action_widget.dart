import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ToolRedoActionWidget extends ConsumerWidget {
  /// 工具：重做操作
  const ToolRedoActionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final canRedo = provider.watchSudokuCanRedo(ref);
    return IconButton(
      onPressed: canRedo
          ? () {
              provider.actionRedo(ref);
            }
          : null,
      icon: Icon(MdiIcons.redo),
    );
  }
}
