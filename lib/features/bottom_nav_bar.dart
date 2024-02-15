
import 'package:flutter/material.dart';
import 'package:knockknock/features/main/profile/presentation/pages/profile_view.dart';
import 'package:knockknock/features/orders/my_orders/presentation/pages/my_orders.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_images.dart';
import '../generated/l10n.dart';
import 'main/credits/presentation/pages/credits_view.dart';
import 'main/home/presentation/pages/home_view.dart';

class BottomNavBarView extends StatefulWidget {
  final int index;
  const BottomNavBarView({super.key, required this.index});

  @override
  State<BottomNavBarView> createState() => _BottomNavBarViewState();
}

class _BottomNavBarViewState extends State<BottomNavBarView> {
  int selectedIndex = 0;
  final List body = [
    const HomeView(),
    const MyOrdersView(),
    const CreditsView(),
    const ProfileView(),
  ];
  @override
  void initState() {
    selectedIndex=widget.index;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: AppColors.primary,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.home,
              ),
              label: S.of(context).home,
              backgroundColor: AppColors.primary
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.booking,
              ),
              label: S.of(context).booking,
              backgroundColor: AppColors.primary

          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.credits,
              ),
              label: S.of(context).credits,
              backgroundColor: AppColors.primary

          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.profile,
              ),
              label: S.of(context).profile,
              backgroundColor: AppColors.primary

          ),
        ],
        mouseCursor: MouseCursor.defer,
        selectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedLabelStyle: const TextStyle(color: Colors.black),
        unselectedItemColor:Colors.black,
        selectedItemColor: Colors.black,
      ),
      body: body.elementAt(selectedIndex),
    );
  }
}


class BottomNavForAllScreenView extends StatefulWidget {
  const BottomNavForAllScreenView({super.key});

  @override
  State<BottomNavForAllScreenView> createState() => _BottomNavForAllScreenViewState();
}

class _BottomNavForAllScreenViewState extends State<BottomNavForAllScreenView> {
  int selectedIndex = 0;
  final List body = [
    const HomeView(),
    const MyOrdersView(),
    const CreditsView(),
    const ProfileView(),
  ];


  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.primary,
      showUnselectedLabels: true,
      showSelectedLabels: true,
      currentIndex: selectedIndex,
      onTap: (index) {
        setState(() {
          selectedIndex = index;
          Navigator.push(context, MaterialPageRoute(
            builder: (BuildContext context) =>  BottomNavBarView(index: selectedIndex),
          ));
        });
      },
      items: [
        BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.home,
            ),
            label: S.of(context).home,
            backgroundColor: AppColors.primary
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.booking,
            ),
            label: S.of(context).booking,
            backgroundColor: AppColors.primary

        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.credits,
            ),
            label: S.of(context).credits,
            backgroundColor: AppColors.primary

        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.profile,
            ),
            label: S.of(context).profile,
            backgroundColor: AppColors.primary

        ),
      ],
      mouseCursor: MouseCursor.defer,
      selectedLabelStyle: const TextStyle(color: Colors.black),
      unselectedLabelStyle: const TextStyle(color: Colors.black),
      unselectedItemColor:Colors.black,
      selectedItemColor: Colors.black,
    );
  }
}