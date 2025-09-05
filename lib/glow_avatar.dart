library glow_avatar;

import 'package:flutter/material.dart';

/// A circular avatar with a glowing border.
///
/// Example:
/// ```dart
/// GlowAvatar(
///   radius: 40,
///   glowColor: Colors.blue,
///   child: Icon(Icons.person, size: 40),
/// )
/// ```
class GlowAvatar extends StatelessWidget {
  final double radius;
  final Color glowColor;
  final double glowRadius;
  final Widget child;
  final Color backgroundColor;
  final BoxBorder? border;

  const GlowAvatar({
    super.key,
    required this.child,
    this.radius = 40,
    this.glowColor = Colors.blue,
    this.glowRadius = 12,
    this.backgroundColor = Colors.white,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
        border: border,
        boxShadow: [
          BoxShadow(
            color: glowColor.withValues(alpha: 0.7),
            blurRadius: glowRadius,
            spreadRadius: 4,
          ),
        ],
      ),
      child: ClipOval(child: Center(child: child)),
    );
  }
}
