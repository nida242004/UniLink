import 'package:flutter/material.dart';
import 'package:unilink/screens/home_screen.dart';
import 'package:unilink/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Ensure Flutter is initialized before running the app
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.highContrastDark(
          primary: Color(0xffae0f0f),
          secondary: Color(0xff5e17eb),
          onSecondary: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: HomeScreen(),  // Set SplashScreen as the initial screen
    );
  }
}
