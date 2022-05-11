import 'package:flutter/material.dart';
import 'package:testapp/services/auth.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Profile')
        ),
      ),
      body: ElevatedButton(
        child: Text('Sign Out'),
        onPressed: () async {
          await AuthService().signOut();
          //reset navigation stack
          Navigator.of(context).pushNamedAndRemoveUntil('/', (route) => false);
        },
      ),
    );
  }
}