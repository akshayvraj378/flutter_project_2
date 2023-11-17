import 'package:flutter/material.dart';
import 'package:flutter_project_2/stack_widget/stacksample.dart';

import 'form/example1.dart';
import 'form/rregisreation form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Regis(),

    );
  }
}

