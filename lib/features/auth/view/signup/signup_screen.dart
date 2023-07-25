import 'package:blood_app/res/colors/AppColors.dart';
import 'package:blood_app/res/components/app_button.dart';
import 'package:blood_app/res/components/hbs_header.dart';
import 'package:blood_app/utils/utils.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const Spacer(),
          HBSHeader(size: size),
          const Spacer(),
          Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 50,
                  ),
                  hintText: 'Email',
                ),
              ),
              Utils.hSpace(),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 50,
                  ),
                  hintText: 'Email',
                ),
              ),
              Utils.hSpace(),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 50,
                  ),
                  hintText: 'Email',
                ),
              ),
              Utils.hSpace(),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 50,
                  ),
                  hintText: 'Email',
                ),
              ),
              Utils.hSpace(),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 50,
                  ),
                  hintText: 'Email',
                ),
              ),
              Utils.hSpace(),
              TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  prefixIconConstraints: BoxConstraints(
                    minWidth: 50,
                  ),
                  hintText: 'Password',
                ),
              ),
              Utils.hSpace(),
              Utils.hSpace(),
              Utils.hSpace(),
              Utils.hSpace(),
            ],
          ),
          AppButtonElevated(
            title: "Register",
            onPress: () {},
            width: double.infinity,
            isCapitalized: true,
          ),
          const Spacer(),
          const AlreadyHaveAccount(),
          Utils.hSpace(),
          Utils.hSpace(),
        ],
      ),
    ));
  }
}

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
            onPressed: () {},
            child: const Text(
              "Already have an account?",
              style: TextStyle(
                color: AppColors.greyColor,
              ),
            )),
        TextButton(
          onPressed: () {},
          child: const Text(
            "Log in",
            style: TextStyle(
              color: AppColors.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
