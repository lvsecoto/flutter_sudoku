import 'package:flutter/material.dart';

class InkWellForeground extends StatelessWidget {

  const InkWellForeground({
    super.key,
    this.onTap,
    this.shape,
    required this.child,
  });

  final VoidCallback? onTap;

  final Widget child;

  final ShapeBorder? shape;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        child,
        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              customBorder: shape,
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}