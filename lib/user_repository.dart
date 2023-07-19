import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:playground_riverpod/user.dart';

final userRepositryProvider = Provider(
  (ref) => UserRepository(),
);

class UserRepository {
  Future<User> fetchUserData() {
    const url = 'https://jsonplaceholder.typicode.com/users/3';
    return http.get(Uri.parse(url)).then(
          (value) => User.fromJson(value.body),
        );
  }
}
