import 'package:flutter/material.dart';

class BookingDetailsPage extends StatelessWidget {
  final Map<String, String> booking; // Receiving booking data

  const BookingDetailsPage({Key? key, required this.booking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(booking['bandName']!), // Show band name as title
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(booking['image']!),
                radius: 50,
              ),
            ),
            const SizedBox(height: 20),
            Text('Date: ${booking['date']!}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            Text('Status: ${booking['status']!}',
                style: TextStyle(
                  fontSize: 18,
                  color: booking['status'] == 'Confirmed'
                      ? Colors.green
                      : booking['status'] == 'Pending'
                      ? Colors.orange
                      : Colors.red,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(height: 10),
            Text('Participants: ${booking['participants']!}', style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
