
import 'package:flutter/material.dart'; //bcz i used appbar code here
import 'package:bands_picker/ui/utils/constants/app_colors.dart';  //bcz i used appbar code here
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class ChatMessage {

  final String name;
  final String message;
  final String time;
  final String date;
  final int notSeenMessageAmount;
  final String imagePath;

  ChatMessage({

    required this.name,
    required this.message,
    required DateTime dateTime,
    required this.notSeenMessageAmount,
    required this.imagePath,
  })  : time = DateFormat('h:mm a').format(dateTime), //: is called an initializer list. It's used to set values before the body of the constructor runs.
        date = DateFormat('dd MMMM yyyy').format(dateTime);

  // Convert JSON to Model
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      name: json['name'],
      message: json['message'],
      dateTime: DateTime.parse(json['dateTime']),
      notSeenMessageAmount: json['notSeenMessageAmount'],
      imagePath: json['imagePath'],
    );
  }

  DateTime? get dateTime => null;

  // Convert Model to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'message': message,
      'dateTime': DateTime.now().toIso8601String(), // Store original DateTime
      'notSeenMessageAmount': notSeenMessageAmount,
      'imagePath': imagePath,
    };
  }
}

//creating appbar here
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size(360, 64); // Set fixed height

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(95, 16, 95, 16),
      child: AppBar(
        centerTitle: true,
        // title: Image.asset("assets/images/appbarLogo.png"),
         title: SvgPicture.asset("assets/images/applogo.svg"),
        elevation: 0,
      ),
    );
  }
}