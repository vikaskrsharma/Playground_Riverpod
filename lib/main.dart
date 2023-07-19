import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playground_riverpod/home.dart';
import 'package:playground_riverpod/user.dart';
import 'package:http/http.dart' as http;
import 'package:playground_riverpod/user_repository.dart';

// Stream Provider

final streamProvider = StreamProvider(
  (ref) async* {
    for (int i = 0; i < 20; i++) {
      yield (i);
      await Future.delayed(const Duration(seconds: 2));
    }
    // yield [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  },
);

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Flutter Riverpod",
      home: HomePage(),
    );
  }
}
