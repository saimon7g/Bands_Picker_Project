import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants/app_colors.dart';
import '../../message_module/data/inbox_model.dart';



class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Column(
        mainAxisSize: MainAxisSize.min,  // Prevent Column from taking full height
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
                  Container(
                    width: 80, // Width 80px
                    height: 80, // Height 80px
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Circular shape
                      border: Border.all(
                        // Border settings
                        color: Colors.white, // Change to your preferred color
                        width: 2, // 2px border
                      ),
                    ),
                    child: CircleAvatar(
                      backgroundImage:
                          AssetImage("assets/images/Ellipse 55.png"),
                      backgroundColor: Color (0xFFFFFFFF), // Optional, to ensure no background color
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Devon Lane",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w600,
                        color: AppColor.messagecolor,
                      height: 37.5 / 25,
                      letterSpacing: 0,
                    ),
                  ),
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text("View Profile",
                        style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                          color: AppColor.messagecolor,
                          height: 19.5 / 13,
                          letterSpacing: 0,
                        ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(height: 20),


          // Second Container
          Container(
            width: 350,
            //width: 280,
            height: 300,
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    "Personal Information",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2F4858),
                      height: 24 / 16,
                      letterSpacing: 0,
                    ),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.all(1),
                    child: SvgPicture.asset(
                      "assets/images/person.svg",
                      width: 24,
                      height: 24,
                    ),
                  ),


                  trailing: Icon(Icons.arrow_forward_ios),

                  // trailing: Transform.rotate(
                  //   angle: 0,  // Rotation in radians, 0° means no rotation
                  //   child: Container(
                  //     width: 4.72,  // Width in pixels
                  //     height: 8,    // Height in pixels
                  //     margin: EdgeInsets.only(top: 8, left: 266),  // Top and left margins
                  //     child: Icon(Icons.arrow_forward_ios, size: 8),  // Icon size 8px
                  //   ),
                  // ),



                  onTap: () {},
                ),
                Divider(color: Colors.black.withOpacity(0.1)),
                ListTile(
                  title: Text("Let us help you",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2F4858),
                      height: 24 / 16,
                      letterSpacing: 0),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.all(1),
                    child: SvgPicture.asset("assets/images/phone-call.svg"),
                  ),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                Divider(color: Colors.black.withOpacity(0.1)),
                ListTile(
                  title: Text("Logout",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF2F4858),
                      height: 24 / 16,
                      letterSpacing: 0,),
                  ),
                  leading: Padding(
                    padding: EdgeInsets.all(1),
                    child: SvgPicture.asset("assets/images/log-out.svg"),
                  ),
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
