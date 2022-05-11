import 'package:testapp/about/about.dart';
import 'package:testapp/home/home.dart';
import 'package:testapp/login/login.dart';
import 'package:testapp/profile/profile.dart';
import 'package:testapp/topics/topics.dart';

var appRoutes = {
  '/': (context) => const HomeScreen(),
  '/login': (context) => const LoginScreen(),
  '/topics': (context) => const TopicsScreen(),
  '/profile': (context) => const ProfileScreen(),
  '/about': (context) => const AboutScreen(),
};