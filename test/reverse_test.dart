import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test/reverse/reverse_funcation.dart';

void main() {
  test("string reverse", () {

    var data="abc";
   var info= reverseString(data);

   expect(info, "cba");


  });
}
