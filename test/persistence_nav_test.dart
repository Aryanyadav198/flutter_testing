import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/src/persistence_nav/persistence_nav.dart';

void main() {
  testWidgets('PersistentNavBar switches between tabs', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: PersistenceNavScreen()));

    // Verify HomeTab is visible
    expect(find.text('Welcome Back, Dev 👋'), findsOneWidget);

    // Tap on the Profile tab icon
    await tester.tap(find.byIcon(Icons.person));
    await tester.pumpAndSettle();

    // Verify ProfileTab is visible
    expect(find.text('RnPower'), findsOneWidget);
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}