import 'package:get/get.dart';

class MainController extends GetxController {
  static MainController get to => Get.find();
  final _selectedIndex = 0.obs;

  int get selectedIndex => _selectedIndex.value;
  
  void onItemTapped(int index) {
    _selectedIndex.value = index;
  }
}
