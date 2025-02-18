import 'package:bands_picker/ui/pages/message_module/controllers/chat_controller.dart';

import 'package:bands_picker/ui/pages/home_module/controller/home_controller.dart';
import 'package:get/get.dart';

Future<void> init()async{
  ///core

  ///Repository


  ///controller
  Get.lazyPut( () => ChatController());
  Get.lazyPut( () => HomeController());
}