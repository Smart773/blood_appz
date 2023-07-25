
import 'package:blood_app/res/colors/AppColors.dart';
import 'package:flutter/material.dart';

class DareToDonate extends StatelessWidget {
  const DareToDonate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      // text -> Dare to Donate (Dare , Donate in different color)
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Dare',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 25,
          ),
        ),
        Text(
          ' to',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
          ),
        ),
        Text(
          ' Donate',
          style: TextStyle(
            color: AppColors.primaryColor,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
class HeaderLogoAndText extends StatelessWidget {
  const HeaderLogoAndText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            width: double.infinity,
            child: Image.asset('assets/goldLogo.png')),
        const DareToDonate(),
      ],
    );
  }
}
