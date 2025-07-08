import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/src/screens/todo_list.dart';

void main() {
  group("ToList :- ", () {
    testWidgets("Verifying the ToList is working fine ",
        (WidgetTester tester) async {
      // Running the page of Pumping it
      // Build the widget
      await tester.pumpWidget(TodoList());
      //arranging variable
      final textFinder = find.byType(TextField);
      expect(textFinder, findsOneWidget);
      await tester.enterText(textFinder, "hi");

      // Arranging finder
      final buttonFinder = find.byType(FloatingActionButton);
      await tester.tap(buttonFinder);

      await tester.pumpAndSettle();

      // verifying that the text is added in the controller and displayed in the screen

      final enteredTexteFinder = find.text("hi");

      expect(enteredTexteFinder, findsOneWidget);
    });
  });
}
