import 'package:blood_app/res/colors/AppColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Utils {
  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
      ),
    );
  }

  static snackBar(String title, String message) {
    Get.snackbar(
      title,
      message,
      maxWidth: 600,
    );
  }

  static void showSnackBarWithAction(BuildContext context, String message,
      String actionText, Function action) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        action: SnackBarAction(
          label: actionText,
          onPressed: () {
            action();
          },
        ),
      ),
    );
  }

  static void showLoaing() {
    Get.dialog(
      barrierColor: AppColors.primaryColor.withOpacity(0.5),
      const Center(
        child: CircularProgressIndicator(
          color: AppColors.whiteColor,
        ),
      ),
      barrierDismissible: false,
    );
  }

  static void hideLoading() {
    Get.back();
  }

  static SizedBox hSpace() {
    return const SizedBox(
      height: 10,
    );
  }

  static SizedBox vSpace() {
    return const SizedBox(
      width: 10,
    );
  }

  static Divider divider() {
    return const Divider(
      height: 20,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}

// Comman Widgets
class ScrollWithIntrinsicHeight extends StatelessWidget {
  const ScrollWithIntrinsicHeight({
    super.key,
    required this.constraints,
    required this.child,
  });

  final BoxConstraints constraints;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: constraints.maxHeight,
        ),
        child: IntrinsicHeight(child: child),
      ),
    );
  }
}
