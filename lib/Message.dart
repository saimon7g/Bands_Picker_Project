import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MessagePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white70,
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Row(
            mainAxisAlignment:
            MainAxisAlignment.center, // ✅ Centers the content
            mainAxisSize: MainAxisSize.min, // ✅ Prevents taking full width
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/images/Vector.png'),
                radius: 20,
              ),
              Text("Bandspicker",
                  style: TextStyle(
                    fontSize: 26,
                  ))
            ],
          ),
        ),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Abu Sufian",
              style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Could you please tell me your"),
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 55.png') , // Local image
                radius: 25
            ),
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
            title: Text("Omar Faruk",
              style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Could you please tell me your"),
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 55 (1).png') , // Local image
                radius: 25
            ),
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
            title: Text("S M Emon",
              style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Could you please tell me your"),
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 55.png') , // Local image
                radius: 25
            ),
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
            title: Text("Afridi",
              style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Could you please tell me your"),
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 55 (1).png') , // Local image
                radius: 25
            ),
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
            title: Text("Kaium",
              style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Could you please tell me your"),
            leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 55.png') , // Local image
                radius: 25
            ),
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
            title: Text("Rakib",
              style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text("Could you please tell me your"),
            leading:CircleAvatar(
                backgroundImage: AssetImage('assets/images/Ellipse 55 (1).png') , // Local image
                radius: 25
            ),
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
