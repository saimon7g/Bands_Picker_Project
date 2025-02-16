import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../message_module/data/inbox_model.dart'; // Import your model


class ChatController extends GetxController {
  // Observable list of messages
  var messages = <ChatMessage>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadMessages(); // Load messages when the controller is initialized
  }

  void loadMessages() {
    messages.value = [
      ChatMessage(
        name: "Abu Sufian",
        message: "Could you please tell me your",
        dateTime: DateTime.now(),
        notSeenMessageAmount: 3,
        imagePath: 'assets/images/eattt.png',
      ),
      ChatMessage(
        name: "Omar Faruk",
        message: "Could you please tell me your",
        dateTime: DateTime.now(),
        notSeenMessageAmount: 1,
        imagePath: 'assets/images/Elli5.png',
      ),
      ChatMessage(
        name: "S M Emon",
        message: "Could you please tell me your",
        dateTime: DateTime.now(),
        notSeenMessageAmount: 1,
        imagePath: 'assets/images/Ellips.png',
      ),
      ChatMessage(
        name: "Afridi",
        message: "Could you please tell me your",
        dateTime: DateTime.now(),
        notSeenMessageAmount: 0,
        imagePath: 'assets/images/human.png',
      ),
      ChatMessage(
        name: "Kaium",
        message: "Could you please tell me your",
        dateTime: DateTime.now(),
        notSeenMessageAmount: 0,
        imagePath: 'assets/images/65.png',
      ),
      ChatMessage(
        name: "Rakib",
        message: "Could you please tell me your",
        dateTime: DateTime.now(),
        notSeenMessageAmount: 0,
        imagePath: 'assets/images/Ellipsededd.png',
      ),
    ];
  }
}
