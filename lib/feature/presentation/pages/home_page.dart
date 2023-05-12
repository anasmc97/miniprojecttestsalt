import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:miniprojectsalt/feature/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:miniprojectsalt/feature/presentation/blocs/auth_bloc/auth_event.dart';
import 'package:miniprojectsalt/feature/presentation/blocs/auth_bloc/auth_state.dart';
import 'package:miniprojectsalt/feature/presentation/pages/login_page.dart';
import 'package:miniprojectsalt/feature/presentation/widgets/user_item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<AuthBloc>().add(const AuthEvent.loadUsers());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
          (route) => false,
        );
        return false;
      },
      child: Scaffold(
        body: BlocBuilder<AuthBloc, AuthState>(
          builder: (context, state) {
            return ListView.builder(
              itemCount: state.users.length,
              itemBuilder: (context, index) {
                return UserItemWidget(user: state.users[index]);
              },
            );
          },
        ),
      ),
    );
  }
}
