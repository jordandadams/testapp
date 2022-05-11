import 'package:flutter/material.dart';
import 'package:testapp/login/login.dart';
import 'package:testapp/topics/topics.dart';
import 'package:testapp/services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Stream builder for login screen
    return StreamBuilder(
      stream: AuthService().userStream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text('Loading...');
        } else if (snapshot.hasError) {
          return const Center(
            child: Text('Error'),
          );
        } else if (snapshot.hasData) {
          return const TopicsScreen();
        } else {
          return const LoginScreen();
        }
      },
    );
  }
}