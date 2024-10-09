import 'package:finanzas_10c/auth/login.dart';
import 'package:finanzas_10c/screens/code/code_email.dart';
import 'package:finanzas_10c/screens/email/email_verification.dart';
import 'package:finanzas_10c/screens/password/password_verfication.dart';
import 'package:finanzas_10c/widgets/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const Login(),
        '/email-verificator': (context) => const EmailVerification(),
        '/code-email': (context) => const CodeEmail(),
        '/password': (context) => const PasswordVerification(),
      },
    );
  }
}
