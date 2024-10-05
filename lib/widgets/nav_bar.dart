import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:unilink/utilities/constants.dart'; // Make sure this path is correct

class CustomNavBar extends StatelessWidget {
  final PersistentTabController controller;

  const CustomNavBar({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller,
      navBarHeight: kSizeBottomNavigationBarHeight,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineToSafeArea: true,
      backgroundColor: kColorBNBBackground,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarStyle: NavBarStyle.style17, // Change to any other style as needed
    );
  }

  List<Widget> _buildScreens() {
    return const [
      Center(child: Text("Home")),
      Center(child: Text("Notifications")),
      Center(child: Text("Add")),
      Center(child: Text("Leaderboard")),
      Center(child: Text("Profile")),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        activeColorPrimary: kColorBNBActiveTitleColor,
        inactiveColorPrimary: kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.notifications),
        activeColorPrimary: kColorBNBActiveTitleColor,
        inactiveColorPrimary: kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(
          Icons.add_box,
          size: 30,
          shadows: [
            BoxShadow(
                color: Color.fromARGB(255, 162, 54, 54), blurRadius: 18),
          ],
        ),
        inactiveIcon: const Icon(Icons.add_box, size: 25),
        activeColorPrimary: kColorBNBActiveTitleColor,
        activeColorSecondary: Colors.white,
        inactiveColorPrimary: kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.leaderboard),
        activeColorPrimary: kColorBNBActiveTitleColor,
        inactiveColorPrimary: kColorBNBDeactiveTitleColor,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        activeColorPrimary: kColorBNBActiveTitleColor,
        inactiveColorPrimary: kColorBNBDeactiveTitleColor,
      ),
    ];
  }
}
