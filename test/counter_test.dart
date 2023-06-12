import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing_app/Counter.dart';

void main(){
  late Counter counter;

  setUpAll(() => counter=Counter());
  group('Counter Class Test-------------->', () { 
    test('Testing Counter Initial Value , It should be zero',(){
      final val = counter.count;
      expect(val,0);
    },);
    test('Testing Counter Increment method after click it should be increment by 1',(){
      counter.incrementCounter();
      final val = counter.count;
      expect(val,1);
    });
    test("Testing Decrement Counter Function it should be 0 when we will use it ",(){
      counter.decrementCounter();
      final val = counter.count;
      expect(val,0);
    });
    test("Testing Reset Function after reset the counter value should be 0",(){
      counter.resetCounter();
      final val = counter.count;
      expect(val,0);
    });
  });
}