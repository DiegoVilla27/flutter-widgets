import 'package:flutter_widgets/presentation/screens/listview/models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

/// Fetches a list of users from a remote API endpoint.
///
/// Sends an HTTP GET request to 'https://dummyjson.com/users' to retrieve
/// user data. If the request is successful (status code 200), it decodes
/// the JSON response and maps it to a list of `User` objects. If the request
/// fails, it throws an exception with the client error status code. In case
/// of any other errors, it throws a server error exception.
///
/// Returns a `Future` that resolves to a list of `User` objects.
Future<List<User>> getUsers() async {
  try {
    final res = await http.get(Uri.parse('https://dummyjson.com/users'));
    if (res.statusCode == 200) {
      final body = json.decode(res.body);
      final users =
          (body["users"] as List).map((user) => User.fromJson(user)).toList();
      return users;
    } else {
      throw Exception('Error del cliente: ${res.statusCode}');
    }
  } catch (e) {
    throw Exception('Error del servidor: $e');
  }
}
