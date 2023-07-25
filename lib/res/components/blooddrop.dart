import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BloodDrop extends StatelessWidget {
  const BloodDrop({
    super.key,
    required this.bloodGroup,
  });

  final String bloodGroup;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage("assets/RedBlood.png"),
            ),
          ),
        ),
        Positioned(
          bottom: 12,
          right: bloodGroup.length > 2 ? 12 : 15,
          child: Text(
            bloodGroup.toUpperCase(),
            style: TextStyle(
              fontSize: bloodGroup.length > 2 ? 18 : 20,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
