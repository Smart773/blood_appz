import 'package:blood_app/res/colors/AppColors.dart';
import 'package:flutter/material.dart';

class HBSHeader extends StatelessWidget {
  const HBSHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: size.height * 0.2,
          width: double.infinity,
          child: Image.asset('assets/goldLogo.png'),
        ),
        const Text(
          "HBS",
          style: TextStyle(
            fontSize: 30,
            color: AppColors.primaryColor,
          ),
        ),
      ],
    );
  }
}
