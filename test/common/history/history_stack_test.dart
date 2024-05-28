import 'package:flutter_sudoku/common/history/history.dart';
import 'package:test/test.dart';

void main() {
  late HistoryStack<String> history;

  test('测试撤销重做逻辑', () {
    history = HistoryStack<String>();
    history.record('hello');

    history.record('world');
    expect(history.undo(), 'hello');
    expect(history.redo(), 'world');
    expect(history.undo(), 'hello');
    expect(history.redo(), 'world');
    expect(history.undo(), 'hello');
  });

  test('测试在撤销后，再压入新的状态，之前撤销的记录会消失', () {
    history = HistoryStack<String>();

    history.record('hello');
    history.record('world');
    history.record('now');
    expect(history.undo(), 'world');
    expect(history.undo(), 'hello');

    history.record('again');
    expect(history.undo(), 'hello');
    expect(history.redo(), 'again');
  });

  test('测试没有历史时，一直撤销的话，只会保持返回最早的状态', () {
    history = HistoryStack<String>();

    history.record('hello');
    history.record('world');
    _repeat(10, () {
      expect(history.undo(), 'hello');
      expect(history.undo(), 'hello');
    });
  });

  test('测试当前是最新的状态的话，一直重做，只会保持返回最晚的状态', () {
    history = HistoryStack<String>();

    history.record('hello');
    history.record('world');
    history.undo();

    _repeat(10, () {
      expect(history.redo(), 'world');
      expect(history.redo(), 'world');
    });
  });

  test('测试是否撤销重做可用状态检测', () {
    history = HistoryStack<String>();

    history.record('hello');
    history.record('world');
    history.record('again');
    expect(history.canUndo, true);
    expect(history.canRedo, false);

    expect(history.undo(), 'world');
    expect(history.canUndo, true);
    expect(history.canRedo, true);

    expect(history.undo(), 'hello');
    expect(history.canUndo, false);
    expect(history.canRedo, true);

    expect(history.redo(), 'world');
    expect(history.canUndo, true);
    expect(history.canRedo, true);

    expect(history.redo(), 'again');
    expect(history.canUndo, true);
    expect(history.canRedo, false);
  });

  test('测试状态监听回调，同步历史记录相关状态', () {
    history = HistoryStack<String>();
    var canUndo = false;
    var canRedo = false;
    history.addListener(() {
      canUndo = history.canUndo;
      canRedo = history.canRedo;
    });

    expect(canUndo, false);
    expect(canRedo, false);

    history.record('hello');

    // 只有一个记录时，是不可以撤销的
    expect(canUndo, false);
    expect(canRedo, false);

    history.record('world');

    expect(canUndo, true);
    expect(canRedo, false);

    history.undo();

    expect(canUndo, false);
    expect(canRedo, true);

    history.redo();

    expect(canUndo, true);
    expect(canRedo, false);
  });

  test('测试清除历史', () {
    history = HistoryStack<String>();
    history.record('hello');
    history.record('hello world');

    expect(history.canUndo, true);

    history.clear();

    expect(history.canUndo, false);
    expect(history.canRedo, false);
  });
}

void _repeat(int time, void Function() block) {
  assert(time > 0);
  for (int i = 0; i < time; i++) {
    block();
  }
}
