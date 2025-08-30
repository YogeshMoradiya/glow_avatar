# 🌟 Glow Avatar for Flutter

[![Pub Version](https://img.shields.io/pub/v/glow_avatar.svg)](https://pub.dev/packages/glow_avatar)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](LICENSE)
[![GitHub stars](https://img.shields.io/github/stars/YogeshMoradiya/glow_avatar.svg?style=social)](https://github.com/YogeshMoradiya/glow_avatar)


A **beautiful glowing avatar widget for Flutter** ✨.  
Perfect for **profile pictures, user icons, social apps, chat apps, or games**.  
Easy to use, customizable, and lightweight.

---

## 🚀 Features
- 🔵 Glowing border around any widget
- 🎨 Custom glow color, size, and radius
- 🖼️ Works with **Icons, Images, Text, Emojis**
- 📱 Flutter-ready for Android, iOS, Web, and Desktop
- ⚡ Zero dependencies – super lightweight!

---

## 📸 Preview
![WhatsApp Image 2025-08-30 at 10 12 32 AM (3)](https://github.com/user-attachments/assets/155dc0f4-1996-4425-ab3f-6877b0cbcf33)

##  glow_avatar Package Code
```library glow_avatar;

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
            color: glowColor.withOpacity(0.7),
            blurRadius: glowRadius,
            spreadRadius: 4,
          ),
        ],
      ),
      child: ClipOval(child: Center(child: child)),
    );
  }
}
```

---

## 📦 Installation

Add to your `pubspec.yaml`:
```yaml
dependencies:
  glow_avatar: ^0.0.1
