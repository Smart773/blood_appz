import 'package:blood_app/res/colors/AppColors.dart';
import 'package:flutter/material.dart';

class AppButtonElevated extends StatelessWidget {
  const AppButtonElevated({
    super.key,
    required this.title,
    required this.onPress,
    this.height = 52,
    this.width = 50,
    this.isLoading = false,
    this.isCapitalized = false,
  });
  final String title;
  final Function onPress;
  final bool isLoading;
  final double height;
  final double width;
  final bool isCapitalized;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, height),
      ),
      onPressed: isLoading
          ? () {}
          : () {
              onPress();
            },
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.whiteColor,
              ),
            )
          : Text(
              isCapitalized ? title.toUpperCase() : title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
    );
  }
}

class AppButtonOutlined extends StatelessWidget {
  const AppButtonOutlined({
    super.key,
    required this.title,
    required this.onPress,
    this.height = 52,
    this.width = 50,
    this.isLoading = false,
    this.isCapitalized = false,
  });
  final String title;
  final Function onPress;
  final double height;
  final double width;
  final bool isLoading;
  final bool isCapitalized;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(width, height),
      ),
      onPressed: isLoading
          ? () {}
          : () {
              onPress();
            },
      child: isLoading
          ? const Center(
              child: CircularProgressIndicator(
                color: AppColors.primaryColor,
              ),
            )
          : Text(
              isCapitalized ? title.toUpperCase() : title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColor,
              ),
            ),
    );
  }
}
