import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class KeyboardAutoDismissWidget extends HookWidget {

  /// 包裹在App上面，如果碰到滑动，或者点击输入框外部，就收起键盘，并取消焦点
  const KeyboardAutoDismissWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return NotificationListener(
      onNotification: (notification) {
        if (notification is ScrollStartNotification) {
          if (notification.dragDetails != null) {
            _hideKeyboardIfNeed(context);
          }
        }
        return false;
      },
      child: GestureDetector(
        onTap: () {
          _hideKeyboardIfNeed(context);
        },
        child: child,
      ),
    );
  }

  /// 执行自动关闭键盘
  ///
  /// 这里会先判断这个focusNode是不是要忽略自动关闭键盘的
  void _hideKeyboardIfNeed(BuildContext context) {
    final currentFocus = FocusScope.of(context);

    if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
      var primaryFocus = FocusManager.instance.primaryFocus;
      if (primaryFocus != null) {
        primaryFocus.unfocus();
      }
    }
  }
}
