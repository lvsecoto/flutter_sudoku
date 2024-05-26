import 'package:flutter_sudoku/common/common.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResetGameActionWidget extends ConsumerWidget {
  /// 恢复游戏状态操作组件
  const ResetGameActionWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () async {
        final isConfirmed = await showConfirmDialog(
          context,
          title:const Text('重新开始游戏'),
          message: const Text('是否清除所有输入，并重新开始游戏？')
        );
        if (isConfirmed) {
          provider.actionResetGame(ref);
        }
      },
      icon: const Icon(Icons.replay_sharp),
    );
  }
}
