import 'package:bands_picker/ui/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(360, 64),
        child: Padding(
            padding: EdgeInsets.fromLTRB(95, 16, 95, 16),
            child: AppBar(
              centerTitle: true,
              title: Image.asset("assets/images/appbarLogo.png"),
              backgroundColor: AppColor.backgroundColor,
              elevation: 0,
            )),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Abu Sufian",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Could you please tell me your",
              style: TextStyle(color:Colors.black38),),
            tileColor: AppColor.notseenmessage,
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  DateFormat('hh:mm a').format(DateTime.now()), // Shows time
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 9), // Space between time and unread count
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: Text(
                    "3",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ],
            ),
            leading: CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/Ellipse 55.png'), // Local image
                radius: 25),
            onTap: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.only(top: 10),
                title: "Delete",
                middleText: "You want delete message?",
                contentPadding: EdgeInsets.all(20),
                textConfirm: "Yes",
                textCancel: "No",
              );
            },
          ),
          ListTile(
            title: Text(
              "Omar Faruk",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Could you please tell me your",
              style: TextStyle(color:Colors.black38),),
            tileColor: AppColor.notseenmessage,
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  DateFormat('hh:mm a').format(DateTime.now()), // Shows time
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10), // Space between time and unread count
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ],
            ),
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/Ellipse 55 (1).png'), // Local image
                radius: 25),
            onTap: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.only(top: 10),
                title: "Delete",
                middleText: "You want delete message?",
                contentPadding: EdgeInsets.all(20),
                textConfirm: "Yes",
                textCancel: "No",
              );
            },
          ),
          ListTile(
            title: Text(
              "S M Emon",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Could you please tell me your",
              style: TextStyle(color:Colors.black38),),
            tileColor: AppColor.notseenmessage,
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  DateFormat('hh:mm a').format(DateTime.now()), // Shows time
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10), // Space between time and unread count
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.deepOrangeAccent,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 11),
                  ),
                ),
              ],
            ),
            leading: CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/Ellipse 55.png'), // Local image
                radius: 25),
            onTap: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.only(top: 10),
                title: "Delete",
                middleText: "You want delete message?",
                contentPadding: EdgeInsets.all(20),
                textConfirm: "Yes",
                textCancel: "No",
              );
            },
          ),
          ListTile(
            title: Text(
              "Afridi",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Could you please tell me your",
              style: TextStyle(color:Colors.black38),),
            trailing: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  DateFormat('d MMMM yy').format(DateTime.now()), // Shows time
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 10), // Space between time and unread count
                Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 11),
                ),
              ],
            ),
            leading: CircleAvatar(
                backgroundImage:
                AssetImage('assets/images/Ellipse 55 (1).png'), // Local image
                radius: 25),
            onTap: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.only(top: 10),
                title: "Delete",
                middleText: "You want delete message?",
                contentPadding: EdgeInsets.all(20),
                textConfirm: "Yes",
                textCancel: "No",
              );
            },
          ),
          ListTile(
            title: Text(
              "Kaium",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Could you please tell me your",
              style: TextStyle(color:Colors.black38),),
            trailing: Text(
              DateFormat('d MMMM yy').format(DateTime.now()), // Shows time
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 55.png'), // Local image
                radius: 25),
            onTap: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.only(top: 10),
                title: "Delete",
                middleText: "You want delete message?",
                contentPadding: EdgeInsets.all(20),
                textConfirm: "Yes",
                textCancel: "No",
              );
            },
          ),
          ListTile(
            title: Text(
              "Rakib",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Could you please tell me your",
              style: TextStyle(color:Colors.black38),),
            trailing: Text(
              DateFormat('d MMMM yy').format(DateTime.now()), // Shows time
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            leading: CircleAvatar(
                backgroundImage: AssetImage(
                    'assets/images/Ellipse 55 (1).png'), // Local image
                radius: 25),
            onTap: () {
              Get.defaultDialog(
                titlePadding: EdgeInsets.only(top: 10),
                title: "Delete",
                middleText: "You want delete message?",
                contentPadding: EdgeInsets.all(20),
                textConfirm: "Yes",
                textCancel: "No",
              );
            },
          ),
        ],
      ),
    );
  }
}

void getCurrentTime() {
  DateTime now = DateTime.now();

  String formattedDate =
  DateFormat('dd-MM-yyyy').format(now); // Example: 2025-02-12
  String formattedTime = DateFormat('hh:mm a').format(now); // Example: 02:30 PM

}