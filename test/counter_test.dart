import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/counter/counter.dart';

void main() {
  test("given test counter initial count 0", () {
    final Counter counter = Counter();

    var initaldata = counter.count;
    expect(initaldata, 0);
  });

  group("counter increment decrement", () {
    late Counter counter;
    setUpAll(() {
       counter = Counter();


    });

    test("given test counter increment count 1", () {

      counter.incrementCounter();
      var initaldata = counter.count;
      expect(initaldata, 1);
    });
    test("given test counter decrement count -1", () {

      counter.decrementCounter();
      var initaldata = counter.count;
      expect(initaldata, 0);
    });
  });
}
