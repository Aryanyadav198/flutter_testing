import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/src/screens/common_screen/counter.dart';
// PreTest()
// setUp((){}); Before test start this run for each of the test
// setUpAll((){}); Before test start this run only once

void main() {
  late Counter counter;
  setUp(() {
    counter = Counter();
  });

  group("Counter class - ", () {
    test("verify that the counter value of the counter class is 0", () {
      // Arrange
      // Act
      final value = counter.counter;
      // Assert
      expect(value, 0);
    });
    test("Verify that the increment function is working correctly expected 1",
        () {
      // Arrange
      // Act
      counter.increment();
      final value = counter.counter;
      // Assert
      expect(value, 1);
    });
    test("Verity that the decrement function is working properly expected 0",
        () {
      // Arrange
      // Act
      counter.decrement();
      final value = counter.counter;
      // Assert
      expect(value, -1);
    });
  });
  // PostTest
  // tearDown((){}); This will run after one test complete for each test
  // tearDownAll((){}); This will run after all the tests complete only once
}
