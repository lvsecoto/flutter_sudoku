import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class ToolEraseModeWidget extends StatelessWidget {

  /// 工具：擦除模式
  const ToolEraseModeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {

      },
      icon: Icon(MdiIcons.eraser),
    );
  }
}
