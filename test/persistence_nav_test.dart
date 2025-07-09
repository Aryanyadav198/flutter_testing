import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/src/persistence_nav/persistence_nav.dart';

void main() {
  testWidgets('PersistentNavBar switches between tabs',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: PersistenceNavScreen()));

    // Verify HomeTab is visible
    expect(find.text('Welcome Back, Dev 👋'), findsOneWidget);

    // Tap on the Profile tab icon
    await tester.tap(find.byIcon(CupertinoIcons.person));
    await tester.pumpAndSettle();
    // print(find.text('RnPower').toString());

    // Verify ProfileTab is visible
    expect(find.text('RnPower'), findsOneWidget);

    expect(find.byType(CircleAvatar), findsOneWidget);

    // Tap on the Home tab icon
    final homeIconFinder = find.byIcon(CupertinoIcons.home);
    await tester.tap(homeIconFinder);
    await tester.pumpAndSettle();

    final homeNavButton = find.byKey(ValueKey("ProfileNav"));
    await tester.tap(homeNavButton);
    await tester.pumpAndSettle();

    final profileTextFinder = find.text('Flutter Developer • UI/UX Enthusiast');
    expect(profileTextFinder, findsOneWidget);
  });
}
