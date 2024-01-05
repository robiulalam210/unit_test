import 'package:flutter/material.dart';
import 'package:unit_test/ui/user_sceen/user_sceen.dart';

import 'counter/counter.dart';
import 'ui/counter_sceen/counter_seccen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePageApi(title: 'Flutter Demo Home Page'),
    );
  }
}

