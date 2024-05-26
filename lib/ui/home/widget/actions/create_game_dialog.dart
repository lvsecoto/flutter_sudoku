import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sudoku/ui/home/provider/provider.dart' as provider;
import 'package:gap/gap.dart';

/// 显示创建数独游戏对话框
Future<provider.SudokuLevel?> showCreateNewSudokuDialog(BuildContext context) {
  return showDialog<provider.SudokuLevel>(
    context: context,
    builder: (context) {
      return const _Dialog();
    },
  );
}

class _Dialog extends HookWidget {
  const _Dialog();

  @override
  Widget build(BuildContext context) {
    final levelState = useValueNotifier<provider.SudokuLevel?>(null);
    return SimpleDialog(
      title: const Text('创建新游戏'),
      contentPadding: const EdgeInsets.fromLTRB(20, 12.0, 20, 16.0),
      children: [
        ...provider.SudokuLevel.values.map(
          (level) => HookBuilder(
            builder: (context) => ChoiceChip(
              showCheckmark: false,
              label: SizedBox(
                width: double.infinity,
                child: Text(level.description, textAlign: TextAlign.center),
              ),
              onSelected: (_) {
                levelState.value = level;
              },
              selected: useListenableSelector(
                levelState,
                () => levelState.value == level,
              ),
            ),
          ),
        ),
        const Gap(20),
        HookBuilder(
          builder: (context) {
            final level = useListenableSelector(
              levelState,
              () => levelState.value,
            );
            return FilledButton(
              onPressed: level == null
                  ? null
                  : () {
                      Navigator.of(context).pop(level);
                    },
              child: const Text('开始'),
            );
          },
        ),
      ],
    );
  }
}
