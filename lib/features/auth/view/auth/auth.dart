import 'package:blood_app/features/auth/view/login/login_Screen.dart';
import 'package:blood_app/features/auth/view/signup/signup_screen.dart';
import 'package:blood_app/features/auth/view/widgets/auth_widgets.dart';
import 'package:blood_app/res/components/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HeaderLogoAndText(),
            Text(
              "You can donate for ones in need and \nrequest blood if you need.",
              textAlign: TextAlign.center,
            ),
            AuthButtons(),
          ],
        ),
      ),
    );
  }
}

class AuthButtons extends StatelessWidget {
  const AuthButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AppButtonOutlined(
          title: 'log in',
          onPress: () {
            // move to login screen
            Get.to(() => const LoginScreen());
          },
          width: double.infinity,
          isCapitalized: true,
        ),
        const SizedBox(
          height: 20,
        ),
        AppButtonElevated(
          title: 'register',
          onPress: () {
            Get.to(() => const SignUpScreen());
          },
          width: double.infinity,
          isCapitalized: true,
        ),
      ],
    );
  }
}
