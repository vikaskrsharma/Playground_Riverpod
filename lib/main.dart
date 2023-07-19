import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playground_riverpod/home.dart';
import 'package:playground_riverpod/user.dart';
import 'package:http/http.dart' as http;
import 'package:playground_riverpod/user_repository.dart';

final userProvider = FutureProvider(
  (ref) {
    final userRepository = ref.watch(userRepositryProvider);
    return userRepository.fetchUserData();
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
