import 'package:flutter/material.dart';
import 'package:glow_avatar/glow_avatar.dart';

void main() => runApp(const DemoApp());

class DemoApp extends StatelessWidget {
  const DemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GlowAvatar Example"),
          centerTitle: true,
        ),
        body: Center(
          /// Using GlowAvatar widget and change color and radius of glow effect
          child: GlowAvatar(
            radius: 60,
            glowColor: Colors.purple,
            child: const Icon(Icons.person, size: 50, color: Colors.black),
          ),
        ),
      ),
    );
  }
}
