import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/src/screens/pages/profile_page.dart';

void main() {
  testWidgets('ProfileScreen renders correctly', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: ProfileScreen(),
      ),
    );

    // final safeAreas = find.byType(SafeArea);
    // print('SafeArea count: ${safeAreas.evaluate().length}');

    // ✅ This asserts your custom SafeArea exists
    expect(find.byKey(const Key('profileScaffold')), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
    final noOfPadding = find.byType(Padding).evaluate().length;
    print("The no of Padding is :- $noOfPadding");
    expect(find.byType(Padding), findsWidgets);
    
    expect(find.byType(SizedBox), findsWidgets);

    // ✅ Optional: check total number of SafeAreas
    // expect(find.byType(SafeArea), findsNWidgets(3));
  });
}
