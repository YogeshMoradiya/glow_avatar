import 'package:flutter_test/flutter_test.dart';
import 'package:glow_avatar/glow_avatar.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('GlowAvatar renders child widget', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: GlowAvatar(
          child: Icon(Icons.person),
        ),
      ),
    );

    expect(find.byIcon(Icons.person), findsOneWidget);
  });
}
