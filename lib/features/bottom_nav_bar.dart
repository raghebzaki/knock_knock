
import 'package:flutter/material.dart';
import 'package:knockknock/features/main/products/presentation/pages/products_view.dart';
import 'package:knockknock/features/main/profile/presentation/pages/profile_view.dart';

import '../../core/utils/app_colors.dart';
import '../../core/utils/app_images.dart';
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
    const ProductsView(),
    const HomeView(),
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
              label: "Home",
              backgroundColor: AppColors.primary
          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.booking,
              ),
              label: "Booking",
              backgroundColor: AppColors.primary

          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.credits,
              ),
              label: "Credits",
              backgroundColor: AppColors.primary

          ),
          BottomNavigationBarItem(
              icon: Image.asset(
                AppImages.profile,
              ),
              label: "Profile",
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
    const ProductsView(),
    const HomeView(),
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
            label: "Home",
            backgroundColor: AppColors.primary
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.booking,
            ),
            label: "Booking",
            backgroundColor: AppColors.primary

        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.credits,
            ),
            label: "Credits",
            backgroundColor: AppColors.primary

        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              AppImages.profile,
            ),
            label: "Profile",
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