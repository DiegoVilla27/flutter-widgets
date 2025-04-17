import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/listview/models/user.dart';
import 'package:flutter_widgets/presentation/screens/listview/service/users.dart';
import 'package:flutter_widgets/presentation/screens/listview/widgets/users/user.dart';
import 'package:flutter_widgets/presentation/screens/snackbar/utils/snackbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateful widget that represents a screen displaying a list view.
/// 
/// This widget is responsible for creating the state object
/// `_ListViewScreenState` which manages the state of the list view screen.
class ListViewScreen extends StatefulWidget {
  const ListViewScreen({super.key});

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final ScrollController _controller = ScrollController();
  List<User> _users = [];
  bool _loading = true;

  @override
  initState() {
    super.initState();
    _loadUsers();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _loadUsers() async {
    try {
      final users = await getUsers();
      setState(() {
        _users = users;
        _loading = false;
      });
    } catch (e) {
      // ignore: use_build_context_synchronously
      SnackBarCustom.open(context, e.toString(), SnackbarType.error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBarCustom(title: "List View"),
      child:
          _loading
              ? const Center(
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  backgroundColor: Colors.black38,
                ),
              )
              : ListView.builder(
                controller: _controller,
                itemCount: _users.length,
                itemBuilder: (context, index) {
                  final user = _users[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: UserCard(user: user),
                  );
                },
              ),
    );
  }
}
