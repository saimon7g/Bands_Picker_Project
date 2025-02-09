import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'nav_controller.dart'; // Import controller

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final NavController navController = Get.put(NavController()); // Inject controller

    return Obx(() => BottomNavigationBar(
      currentIndex: navController.selectedIndex.value, // ✅ Track selected index
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        navController.changeIndex(index); // ✅ Update index on tap

        /// ✅ Use `Get.toNamed()` instead of `Get.offNamed()`
        if (index == 0) {
          Get.toNamed("/homeScreen");
        } else if (index == 1) {
          Get.toNamed("/bookingScreen");
        } else if (index == 2) {
          Get.toNamed("/messageScreen");
        } else if (index == 3) {
          Get.toNamed("/accountScreen");
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.event), label: "Booking"),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
      ],
    ));
  }
}
