import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'create_game_dialog.dart';

class CreateGameActionWidget extends ConsumerWidget {
  /// 创建游戏组件
  const CreateGameActionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () async {
        final level = await showCreateNewSudokuDialog(context);
        if (level != null) {
          provider.actionRecreateGame(ref, level);
        }
      },
      icon: const Icon(Icons.add),
    );
  }
}
