import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playground_riverpod/main.dart';
import 'package:playground_riverpod/user.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  void onSubmit(WidgetRef ref, String value) {
    // This is used in StateProvider
    // ref.read(nameProvider.notifier).update(
    //       (state) => value,
    //     );

    ref.read(userProvider.notifier).updateNmae(value);
  }

  void onSubmitAge(WidgetRef ref, String value) {
    ref.read(userProvider.notifier).updateAge(int.parse(value));
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final name = ref.watch(nameProvider) ?? '';
    final user = ref.watch(userProvider) as User;
    return Scaffold(
      appBar: AppBar(
        title: Text(user.age.toString()),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            onSubmitted: (value) => onSubmit(ref, value),
          ),
          TextField(
            onSubmitted: (value) => onSubmitAge(ref, value),
          ),
          Center(
            child: Text(
              user.name,
              style: const TextStyle(fontSize: 50),
            ),
          ),
        ],
      ),
    );
  }
}
