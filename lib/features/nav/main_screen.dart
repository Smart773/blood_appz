import 'package:blood_app/features/RequestPage/view/donation_request.dart';
import 'package:blood_app/features/home/view/home.dart';
import 'package:blood_app/res/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:get/get.dart';

import 'controllers/main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  // widgetList

  @override
  Widget build(BuildContext context) {
    final mainController = Get.put(MainController());
    final List<Widget> widgetList = [
      const HomeScreen(),
      Container(
        color: Colors.blue,
      ),
      Container(
        color: Colors.green,
      ),
      const DonationRequest(),
      Container(
        color: Colors.yellow,
      ),
    ];

    return Obx(() => Scaffold(
          body: Center(
            child: widgetList[mainController.selectedIndex],
          ),
          //bottoem navigation bar with float
          bottomNavigationBar: CurvedNavigationBar(
              index: mainController.selectedIndex,
              backgroundColor: Colors.grey[200]!,
              height: 55,
              items: [
                BottomIcons(
                    icon: Icons.home,
                    selectedIndex: mainController.selectedIndex,
                    currentIndex: 0),
                BottomIcons(
                    icon: Icons.search,
                    selectedIndex: mainController.selectedIndex,
                    currentIndex: 1),
                BottomIcons(
                    image: const AssetImage('assets/whiteBlood.png'),
                    selectedIndex: mainController.selectedIndex,
                    currentIndex: 2),
                BottomIcons(
                    image: const AssetImage('assets/heartRate.png'),
                    selectedIndex: mainController.selectedIndex,
                    currentIndex: 3),
                BottomIcons(
                    icon: Icons.person,
                    selectedIndex: mainController.selectedIndex,
                    currentIndex: 4),
              ],
              onTap: (index) {
                mainController.onItemTapped(index);
              }),
        ));
  }
}

class BottomIcons extends StatelessWidget {
  const BottomIcons({
    super.key,
    this.icon,
    this.image,
    required this.selectedIndex,
    required this.currentIndex,
  });

  final IconData? icon;
  final ImageProvider? image;
  final int selectedIndex;
  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return icon == null
        ? ImageIcon(
            image!,
            color: selectedIndex == currentIndex
                ? AppColors.primaryColor
                : Colors.grey,
          )
        : Icon(
            icon,
            color: selectedIndex == currentIndex
                ? AppColors.primaryColor
                : Colors.grey,
          );
  }
}
