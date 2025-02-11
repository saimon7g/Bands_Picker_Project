import 'package:flutter/material.dart';


class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            // First Container (Profile)
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/Ellipse 55.png"),
                    radius: 40,
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Gazi Md Sadar Uddin",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  TextButton(
                    onPressed: () {},
                    child: Text("View Profile", style: TextStyle(color: Colors.red)),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // Second Container (Other Options)
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
                ],
              ),
              child: Column(
                children: [
                  ListTile(
                    title: Text("Personal Information"),
                    leading: Icon(Icons.person, color: Colors.red),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Let us help you"),
                    leading: Icon(Icons.call, color: Colors.red),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    title: Text("Logout"),
                    leading: Icon(Icons.logout, color: Colors.red),
                    trailing: Icon(Icons.arrow_forward_ios),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
