import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:template_project/login/login.dart';
import 'package:template_project/welcome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Design',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome' : (context) => WelcomeScreen(),
        '/login' : (context) => LoginScreen(),
        // '/register': (context) => RegisterScreen(),
        // '/home': (context) => HomeScreen(),
        // '/profile': (context) => ProfileScreen(),
        // '/messages': (context) => MessagesScreen(),
      },
    );
  }
}

