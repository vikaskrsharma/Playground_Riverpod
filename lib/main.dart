import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playground_riverpod/home.dart';
import 'package:playground_riverpod/user.dart';

// Provider
// final nameProvider = Provider<String>((ref) => "riverpod");

// StateProvider
// final nameProvider = StateProvider<String?>(
//   (ref) => null,
// );

//StateNotifier and StateNotifierProvider
final userProvider = StateNotifierProvider<UserNotifier, User>(
  (ref) => UserNotifier(
    const User(name: '', age: 0),
  ),
);

// ChangeNotifierProvider
// FutureProvider

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
