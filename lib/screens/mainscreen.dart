import 'package:ecommerce_app/controllers/mainscreen_provider.dart';
import 'package:ecommerce_app/screens/cartscreen.dart';
import 'package:ecommerce_app/screens/homescreen.dart';
import 'package:ecommerce_app/screens/profilescreen.dart';
import 'package:ecommerce_app/screens/searchscreen.dart';
import 'package:ecommerce_app/shared/bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mainscreen extends StatelessWidget {
  Mainscreen({super.key});
  List<Widget> pageList = const [
    HomeScreen(),
    SearchScreen(),
    HomeScreen(),
    CartScreen(),
    ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(
      builder: (context, mainScreenNotifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNotifier.pageIndex],
          bottomNavigationBar: const BottomNavBar(),
        );
      },
    );
  }
}

