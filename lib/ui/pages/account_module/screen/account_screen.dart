import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/app_colors.dart';

class AccountPage extends StatelessWidget {
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
          // First Container (Profile)
          Container(
            width: 388,
            height: 226,
            decoration: BoxDecoration(
              color: AppColor.notseenmessage,
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
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text("View Profile",
                        style: TextStyle(color: Colors.deepOrangeAccent)),
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
                  leading: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        top: 3.0,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/person.svg",
                        width: 24,
                        height: 24,
                      )),
                  trailing: SizedBox(
                      // height: 24,
                      // width: 24,
                      child: Icon(
                        Icons.arrow_forward_ios,
                      )),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
                ListTile(
                  title: Text("Let us help you"),
                  leading: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        top: 3.0,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/phone-call.svg",
                        width: 24,
                        height: 24,
                      )),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black.withOpacity(0.1),
                ),
                ListTile(
                  title: Text("Logout"),
                  leading: Padding(
                      padding: EdgeInsets.only(
                        left: 8.0,
                        top: 3.0,
                      ),
                      child: SvgPicture.asset(
                        "assets/images/log-out.svg",
                        width: 24,
                        height: 24,
                      )),
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
