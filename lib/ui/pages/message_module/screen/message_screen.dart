import 'package:bands_picker/ui/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../data/inbox_model.dart';


class MessagePage extends StatelessWidget {
  // Sample data list
  final List<ChatMessage> messages = [
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
      notSeenMessageAmount: 0, // No unread messages
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

  String formatDateTime(DateTime dateTime, bool isSeen) {
    if (isSeen) {
      return DateFormat('dd MMMM yyyy').format(dateTime); // Show date if seen
    } else {
      return DateFormat('h:mm a').format(dateTime); // Show time in AM/PM format if not seen
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(64),
        child: Padding(
          padding: EdgeInsets.only(left: 95, right: 95, top: 16,bottom: 16),
          child: AppBar(
            centerTitle: true,
            title: Image.asset("assets/images/appbarLogo.png", height: 32, width:170,),
            backgroundColor: AppColor.backgroundColor,

          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            ChatMessage chat = messages[index];
            bool isSeen = chat.notSeenMessageAmount == 0;

            return Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  title: Text(
                    chat.name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  subtitle: Text(
                    chat.message,
                    style: TextStyle(color: Colors.black38, fontSize: 14),
                  ),
                  tileColor: chat.notSeenMessageAmount > 0
                      ? AppColor.notseenmessage
                      : Colors.transparent,
                  trailing: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        formatDateTime(chat.dateTime ?? DateTime.now(), isSeen),
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      if (chat.notSeenMessageAmount > 0) ...[
                        SizedBox(height: 5),
                        CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.deepOrangeAccent,
                          child: Text(
                            chat.notSeenMessageAmount.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ],
                  ),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(chat.imagePath ?? 'assets/images/default.png'),
                    radius: 25,
                  ),
                  onTap: () {
                    Get.defaultDialog(
                      titlePadding: EdgeInsets.only(top: 10),
                      title: "Delete",
                      middleText: "You want to delete this message?",
                      contentPadding: EdgeInsets.all(20),
                      textConfirm: "Yes",
                      textCancel: "No",
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}


