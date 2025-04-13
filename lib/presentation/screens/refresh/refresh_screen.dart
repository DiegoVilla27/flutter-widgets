import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/refresh/models/user.dart';
import 'package:flutter_widgets/presentation/screens/refresh/service/users.dart';
import 'package:flutter_widgets/presentation/screens/refresh/widgets/users/user.dart';
import 'package:flutter_widgets/presentation/screens/snackbar/utils/snackbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents the refresh screen in the application.
///
/// This widget is responsible for creating the state for the refresh screen,
/// which is managed by the `_RefreshScreenState` class.
class RefreshScreen extends StatefulWidget {
  const RefreshScreen({super.key});

  @override
  State<RefreshScreen> createState() => _RefreshScreenState();
}

class _RefreshScreenState extends State<RefreshScreen> {
  List<User> _users = [];
  bool _loading = true;
  int _skip = 0;

  @override
  initState() {
    super.initState();
    _loadUsers();
  }

  /// Loads a list of users asynchronously, starting from the specified index.
  ///
  /// Fetches users from the data source, updates the state with the retrieved
  /// users, and increments the skip counter by 10. If an error occurs during
  /// the fetch, displays an error snackbar with the error message.
  ///
  /// [skip] The number of users to skip when fetching the list. Defaults to 0.
  Future<void> _loadUsers([int skip = 0]) async {
    try {
      final users = await getUsers(skip);
      setState(() {
        _users = users;
        _loading = false;
        _skip += 10;
      });
    } catch (e) {
      if (mounted) {
        SnackBarCustom.open(context, e.toString(), SnackbarType.error);
      }
    }
  }

  /// Resets the skip state by setting the loading flag to true
  /// and initiating the user loading process.
  void _resetSkip() {
    setState(() => _loading = true);
    _loadUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBarCustom(title: "Refresh"),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetSkip,
        child: const Icon(Icons.restore),
      ),
      child:
          _loading
              ? const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  backgroundColor: Colors.black38,
                ),
              )
              : RefreshIndicator(
                onRefresh: () => _loadUsers(_skip),
                child: ListView.builder(
                  itemCount: _users.length,
                  itemBuilder:
                      (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: UserCard(user: _users[index]),
                      ),
                ),
              ),
    );
  }
}
