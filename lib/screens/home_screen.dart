import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:unilink/widgets/nav_bar.dart'; // Update the import path as necessary

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late PersistentTabController _controller; // Define the controller

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0); // Initialize the controller
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomNavBar(controller: _controller), // Use CustomNavBar here
    );
  }
}
