import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:playground_riverpod/main.dart';
import 'package:playground_riverpod/user.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final user = ref.watch(userProvider);
    // return user.when(
    //   data: (data) {
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: Text(data.name),
    //       ),
    //       body: Column(
    //         // mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Center(
    //             child: Text(
    //               data.email,
    //               style: const TextStyle(fontSize: 50),
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    //   error: (error, stackTrace) {
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: const Text('Error Screen'),
    //       ),
    //       body: Column(
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           Center(
    //             child: Text(
    //               'API gave error ${error.toString()}',
    //               style: const TextStyle(fontSize: 20),
    //             ),
    //           ),
    //         ],
    //       ),
    //     );
    //   },
    //   loading: () {
    //     return Scaffold(
    //       appBar: AppBar(
    //         title: const Text('Loading Screen'),
    //       ),
    //       body: const Center(
    //         child: CircularProgressIndicator(),
    //       ),
    //     );
    //   },
    // );

    return ref.watch(streamProvider).when(
      data: (data) {
        return Scaffold(
          appBar: AppBar(
            title: Text('data'),
          ),
          body: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  data.toString(),
                  style: const TextStyle(fontSize: 50),
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Error Screen'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'API gave error ${error.toString()}',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          ),
        );
      },
      loading: () {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Loading Screen'),
          ),
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
