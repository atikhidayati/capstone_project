import 'package:capstone_project/view/dashboard/account_screen.dart';
import 'package:capstone_project/view/dashboard/home_screen.dart';
import 'package:capstone_project/view/dashboard/maps_screen.dart';
import 'package:capstone_project/view/dashboard/payment_screen.dart';
import 'package:capstone_project/view/dashboard/wishlish_screen.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int navIndex = 0;

  Widget returnScreen(int navIndex) {
    switch (navIndex) {
      case 0:
        return const HomeScreen();
      case 1:
        return const WishlistScreen();
      case 2:
        return const MapsScreen();
      case 3:
        return const PaymentScreen();
      case 4:
        return const AccountScreen();
      default:
        return const HomeScreen();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: returnScreen(navIndex),
      bottomNavigationBar: FloatingNavbar(
        margin: EdgeInsets.all(0),
        padding: EdgeInsets.all(8),
        onTap: (val) {
          setState(() {
            navIndex = val;
          });
        },
        borderRadius: 25,
        itemBorderRadius: 25,
        currentIndex: navIndex,
        backgroundColor: const Color(0xFF8BC342),
        selectedBackgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF8BC342),
        items: [
          FloatingNavbarItem(
            icon: Icons.home,
          ),
          FloatingNavbarItem(
            icon: Icons.bookmark,
          ),
          FloatingNavbarItem(
            icon: Icons.location_pin,
          ),
          FloatingNavbarItem(
            icon: Icons.payment_rounded,
          ),
          FloatingNavbarItem(
            icon: Icons.person,
          ),
        ],
      ),
    );
  }
}
