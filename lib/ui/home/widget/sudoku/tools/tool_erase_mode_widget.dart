import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ToolEraseModeWidget extends ConsumerWidget {
  /// 工具：擦除模式
  const ToolEraseModeWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isEraseMode = provider.watchIsSudokuEraseMode(ref);
    return AnimatedMaterial(
      shape: const CircleBorder(),
      color: isEraseMode
          ? Theme.of(context).colorScheme.tertiaryContainer
          : Colors.transparent,
      child: IconButton(
        onPressed: () {
          provider.actionToggleSudokuEraseMode(ref);
        },
        icon: Icon(
          MdiIcons.eraser,
          color: isEraseMode
              ? Theme.of(context).colorScheme.onTertiaryContainer
              : null,
        ),
      ),
    );
  }
}
