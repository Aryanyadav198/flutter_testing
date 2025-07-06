import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/src/screens/common_screen/counter.dart';

void main() {
  test("verify that the counter value of the counter class is 0", () {
    // Arrange
    final Counter counter = Counter();
    // Act
    final value = counter.counter;
    // Assert
    expect(value, 0);
  });
  test("Verify that the increment function is working correctly expected 1" , (){

    // Arrange 
    final Counter counter = Counter();
    // Act 
    counter.increment();
    final value = counter.counter;
    // Assert 
    expect(value, 1);
  });
}
