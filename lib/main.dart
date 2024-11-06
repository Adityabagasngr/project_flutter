import 'package:flutter/material.dart';
import 'splash_screen.dart'; 
import 'login.dart'; 
import 'lupa_password.dart'; 
import 'daftar.dart'; 
import 'home.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/splash', 
      routes: {
        '/splash': (context) => SplashScreen(), 
        '/login': (context) => const LoginScreen(), 
        '/forgot_password': (context) => const ForgotPasswordScreen(), 
        '/register': (context) => const RegisterScreen(), 
        '/home': (context) => const HomeScreen(), 
      },
    );
  }
}
