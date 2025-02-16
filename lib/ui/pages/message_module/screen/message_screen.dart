import 'package:bands_picker/ui/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import '../controllers/chat_controller.dart';
import '../data/inbox_model.dart';
import 'package:bands_picker/ui/utils/constants/date_helper.dart';


class MessagePage extends StatelessWidget {

  final ChatController chatController = Get.put(ChatController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
        child: ListView.builder(
          itemCount: chatController.messages.length,
          itemBuilder: (context, index) {
            ChatMessage chat = chatController.messages[index];
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
                        DateHelper.formatDateTime(chat.dateTime ?? DateTime.now(), isSeen),
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


