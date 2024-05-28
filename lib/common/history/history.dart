/// 对象状态[T]的历史堆栈，可以推入或者弹出
class HistoryStack<T> {

  /// 最大索引的数据，即为最新的状态
  final _store = <T>[];

  /// 读取内容，用于保存的数据
  ({
    List<T> store,
    int step,
  }) read() {
    return (
      store: _store.toList(),
      step: _step,
    );
  }

  final List<void Function()> _listeners = [];

  /// 添加监听器
  void addListener(void Function() onChange) {
    _listeners.add(onChange);
  }

  /// 删除监听器
  void removeListener(void Function() onChange) {
    _listeners.remove(onChange);
  }

  /// 恢复状态
  void restore({
    required List<T> store,
    required int step,
  }) {
    _store.clear();
    _store.addAll(store);
    _step = step;
  }

  /// 在哪一条历史记录
  ///
  /// 为历史数目时，为历史堆栈的最新状态，越小，代表历史堆栈的最早状态
  int _step = 0;

  /// 压入当前的状态
  ///
  /// **[step]之后的记录会全部抹除**
  void record(T state) {
    _store.removeRange(_step, _store.length);
    _store.add(state);
    _step = _store.length;
    _notifyListeners();
  }

  /// 是否可以撤销操作
  bool get canUndo {
    return _step > 1;
  }

  /// 撤销
  T undo() {
    if (canUndo) {
      _step--;
      _notifyListeners();
    }
    return current;
  }

  /// 是否可以重做操作
  bool get canRedo {
    return _step < _store.length;
  }

  /// 重做
  T redo() {
    if (canRedo) {
      _step++;
      _notifyListeners();
    }
    return current;
  }

  /// 清除历史堆栈
  void clear() {
    if (_store.isEmpty) {
      return;
    }
    _store.clear();
    _step = 0;
  }

  /// 当前状态
  T get current => _store.elementAt(_step - 1);

  /// 通知监听器
  void _notifyListeners() {
    for (final it in _listeners) {
      it.call();
    }
  }
}
