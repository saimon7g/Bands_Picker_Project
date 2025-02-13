import 'package:flutter/material.dart';

import '../../../utils/constants/app_colors.dart';


class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.backgroundColor,
      appBar: PreferredSize(
        preferredSize: Size(370, 64),
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
          // First Container (Profile)
          Container(
            width: 388,
            height: 226,
            decoration: BoxDecoration(
              color: UnseenMessageColor.backgroundColor,
            ),
            child: Container(
              height: 162,
              width: 145,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Ellipse 55.png"),
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Devon Lane",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text("View Profile", style: TextStyle(color: Colors.deepOrangeAccent)),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),

          // Second Container (Other Options)
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                ListTile(
                  title: Text("Personal Information"),
                  leading: Icon(Icons.person_2_outlined, color: Colors.deepOrangeAccent),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
                ListTile(
                  title: Text("Let us help you"),
                  leading: Icon(Icons.call, color: Colors.deepOrangeAccent),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Icon(Icons.logout, color: Colors.deepOrangeAccent),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
