import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:social_media_app/auth/auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:social_media_app/pages/users.dart';
import 'package:social_media_app/pages/profile.dart';
import 'package:social_media_app/pages/homepage.dart';
import 'package:social_media_app/themes/dark_mode.dart';
import 'package:social_media_app/themes/light_mode.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const AuthPage(),
      theme: lightMode,
      darkTheme: darkMode,
      routes: {
        '/homepage': (context) => const Homepage(),
        '/profile_page': (context) => const ProfilePage(),
        '/users_page': (context) => const UsersPage()
      }
    );
  }
}