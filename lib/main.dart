import 'package:flutter/material.dart';

import './widgets/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.blue,
          ),
          useMaterial3: false,
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(),
          )),
      home: const SignInScreen(),
    );
  }
}
