import 'package:flutter/material.dart';
import 'theme.dart';

class ThemeWidget extends StatelessWidget {
  /// 封装了主题的处理
  const ThemeWidget({
    super.key,
    required this.builder,
  });

  final ValueWidgetBuilder<ThemeData> builder;

  @override
  Widget build(BuildContext context) {
    return builder(context, _buildTheme(Colors.blue), null);
  }

  /// 生成以[primaryColor]为主色调的颜色主题
  ThemeData _buildTheme(Color primaryColor) {
    const colorSeed = Colors.lightBlue;
    final colorScheme = ColorScheme.fromSeed(
      seedColor: colorSeed,
    );
    return ThemeData(
      colorScheme: colorScheme,
      useMaterial3: true,
      snackBarTheme: const SnackBarThemeData(
          behavior: SnackBarBehavior.floating, showCloseIcon: true),
      extensions: [AppTheme.from(colorSeed: colorSeed)],
    );
  }
}
