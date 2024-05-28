import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ToolTipModeWidget extends StatelessWidget {
  /// 工具：提示模式
  const ToolTipModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {

      },
      icon: Icon(MdiIcons.lightbulb),
    );
  }
}
