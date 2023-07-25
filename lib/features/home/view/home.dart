import 'package:blood_app/res/colors/AppColors.dart';
import 'package:blood_app/res/components/request_card.dart';
import 'package:blood_app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final List<String> images = [
      'assets/card1.png',
      'assets/card1.png',
      'assets/card1.png',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.dashboard,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              CardSwipper(size: size, images: images),
              Utils.hSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainActionsButtons(
                      onPress: () {},
                      size: size,
                      iconPath: "assets/icon1.png",
                      label: "Find Donors"),
                  MainActionsButtons(
                      onPress: () {},
                      size: size,
                      iconPath: "assets/icon2.png",
                      label: "Donates"),
                  MainActionsButtons(
                      onPress: () {},
                      size: size,
                      iconPath: "assets/icon3.png",
                      label: "Order Blood"),
                ],
              ),
              Utils.hSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MainActionsButtons(
                      onPress: () {},
                      size: size,
                      iconPath: "assets/icon4.png",
                      label: "Assistant"),
                  MainActionsButtons(
                      onPress: () {},
                      size: size,
                      iconPath: "assets/icon5.png",
                      label: "Reports"),
                  MainActionsButtons(
                      onPress: () {},
                      size: size,
                      iconPath: "assets/icon6.png",
                      label: "Camaign"),
                ],
              ),
              Utils.hSpace(),
              const Row(
                children: [
                  Text(
                    "Recent Requests",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Utils.hSpace(),
              //card
              RequestCard(
                name: "John Doe",
                location: "Dhaka, Bangladesh",
                time: "2 hours ago",
                bloodGroup: "AB+",
                onPress: () {},
              ),
              Utils.hSpace(),
              RequestCard(
                name: "John Doe",
                location: "Dhaka, Bangladesh",
                time: "2 hours ago",
                bloodGroup: "A+",
                onPress: () {},
              ),
              Utils.hSpace(),
              RequestCard(
                name: "John Doe",
                location: "Dhaka, Bangladesh",
                time: "2 hours ago",
                bloodGroup: "B+",
                onPress: () {},
              ),
              Utils.hSpace(),
              RequestCard(
                name: "John Doe",
                location: "Dhaka, Bangladesh",
                time: "2 hours ago",
                bloodGroup: "O+",
                onPress: () {},
              ),
              Utils.hSpace(),
              RequestCard(
                name: "John Doe",
                location: "Dhaka, Bangladesh",
                time: "2 hours ago",
                bloodGroup: "O-",
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MainActionsButtons extends StatelessWidget {
  const MainActionsButtons({
    super.key,
    required this.onPress,
    required this.size,
    required this.iconPath,
    required this.label,
  });

  final void Function() onPress;
  final Size size;
  final String iconPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: (size.width >= 294) ? size.height * 0.15 : size.height * 0.1,
        width: size.width * 0.27,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon(
              size: 30,
              AssetImage(iconPath),
              color: AppColors.primaryColor,
            ),
            size.width >= 294 ? Utils.hSpace() : const SizedBox(),
            size.width >= 242
                ? Text(
                    label,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

class CardSwipper extends StatelessWidget {
  const CardSwipper({
    super.key,
    required this.size,
    required this.images,
  });

  final Size size;
  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height * 0.25,
      child: Swiper(
        autoplay: true,
        pagination: const SwiperPagination(
          alignment: Alignment.bottomCenter,
          builder: DotSwiperPaginationBuilder(
            activeColor: AppColors.primaryColor,
            color: Colors.grey,
          ),
        ),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: size.height * 0.2,
                width: size.width * 0.95,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    images[index],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Utils.hSpace(),
            ],
          );
        },
      ),
    );
  }
}
