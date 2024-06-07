import 'package:ecommerce_app/controllers/mainscreen_provider.dart';
import 'package:ecommerce_app/shared/bottom_nav_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNotifier>(builder: (context, mainScreenNotifier, child){
      return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(
              Radius.circular(16),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex = 0;
                },
                icon: mainScreenNotifier.pageIndex == 0
                    ? MaterialCommunityIcons.home
                    : MaterialCommunityIcons.home_outline,
              ),
              BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex = 1;
                },
                icon: mainScreenNotifier.pageIndex == 1
                    ? Ionicons.search
                    : Ionicons.search_outline,
              ),
              BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex = 2;
                },
                icon: mainScreenNotifier.pageIndex == 2
                    ? Ionicons.add
                    : Ionicons.add_circle_outline,
              ),
              BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex = 3;
                },
                icon: mainScreenNotifier.pageIndex == 3
                    ? Ionicons.cart
                    : Ionicons.cart_outline,
              ),
              BotomNavWidget(
                onTap: () {
                  mainScreenNotifier.pageIndex = 4;
                },
                icon: mainScreenNotifier.pageIndex == 4
                    ? Ionicons.person
                    : Ionicons.person_outline,
              ),
            ],
          ),
        ),
      ),
    );
    });
  }
}
