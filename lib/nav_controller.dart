import 'package:get/get.dart';

class NavController extends GetxController {
  var selectedIndex = 0.obs; // Observable variable to track index

  void changeIndex(int index) {
    selectedIndex.value = index;
  }
}
