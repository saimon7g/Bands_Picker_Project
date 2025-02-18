import 'package:bands_picker/ui/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/chat_controller.dart';
import '../data/inbox_model.dart';
import 'package:bands_picker/ui/utils/constants/date_helper.dart';



class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

 // final ChatController chatController = Get.put(ChatController()); //chatController is instance of ChatController

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: GetBuilder<ChatController>(
        builder: (chat) {
          return Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemCount: chat.messages.length,
              itemBuilder: (context, index) {
                ChatMessage email = chat.messages[index];
                bool isSeen = email.notSeenMessageAmount == 0;

                return Container(
                  width: 360,
                  height: 88,
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  color: email.notSeenMessageAmount > 0
                      ? AppColor.lightPink //// if msg not seen
                      : Colors.transparent, // if msg seen
                  child: Row(
                    children: [
                      // Profile Picture
                      Image.asset(
                        email.imagePath.isNotEmpty
                            ? email.imagePath
                            : 'assets/images/default.png',
                        width: 56,
                        height: 56,
                        fit: BoxFit.cover,
                      ),

                      SizedBox(width: 8), // Space between image and text

                      // Name & Message Column
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // Name
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  email.name,
                                  // chat['name'],
                                  style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    height: 24/16,
                                    letterSpacing: 0,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min, // To avoid extra space
                                    crossAxisAlignment: CrossAxisAlignment.end, // Align children to the right
                                    children: [
                                      Text(
                                        DateHelper.formatDateTime(email.dateTime ?? DateTime.now(), isSeen),
                                        style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.w400,
                                          height: 15/10,
                                          letterSpacing: 0,
                                          color: AppColor.darkShade,
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      if (email.notSeenMessageAmount > 0)
                                        Container(
                                          width: 20,
                                          height: 20,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                            color: AppColor.lightCoral,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Text(
                                            email.notSeenMessageAmount.toString(),
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w500,
                                              height: 15 / 10,
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                )

                              ],
                            ),
                            SizedBox(height: 4), // Small gap
                            // Message
                            Text(
                              email.message,
                              //chat['message'],
                              style: TextStyle(
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w400,
                                   height: 19.5 / 13,
                                  color: AppColor.darkShade),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );








                // return Column(
                //   children: [
                //     ListTile(
                //       contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                //       title: Text(
                //         chat.name,
                //         style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                //       ),
                //       subtitle: Text(
                //         chat.message,
                //         style: TextStyle(color: Colors.black38, fontSize: 14),
                //       ),
                //       tileColor: chat.notSeenMessageAmount > 0
                //           ? AppColor.notseenmessage
                //           : Colors.transparent,
                //       trailing: Column(
                //         mainAxisSize: MainAxisSize.min,
                //         children: [
                //           Text(
                //             DateHelper.formatDateTime(chat.dateTime ?? DateTime.now(), isSeen),
                //             style: TextStyle(fontSize: 12, color: Colors.grey),
                //           ),
                //           if (chat.notSeenMessageAmount > 0) ...[
                //             SizedBox(height: 5),
                //             CircleAvatar(
                //               radius: 10,
                //               backgroundColor: Colors.deepOrangeAccent,
                //               child: Text(
                //                 chat.notSeenMessageAmount.toString(),
                //                 style: TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold),
                //               ),
                //             ),
                //           ],
                //         ],
                //       ),
                //       leading: CircleAvatar(
                //         backgroundImage: AssetImage(chat.imagePath ?? 'assets/images/default.png'),
                //         radius: 25,
                //       ),
                //       onTap: () {
                //         Get.defaultDialog(
                //           titlePadding: EdgeInsets.only(top: 10),
                //           title: "Delete",
                //           middleText: "You want to delete this message?",
                //           contentPadding: EdgeInsets.all(20),
                //           textConfirm: "Yes",
                //           textCancel: "No",
                //         );
                //       },
                //     ),
                //   ],
                // );
              },
            ),
          );
        }
      ),
    );
  }
}

