// lib/ui/pages/booking_module/booking_card.dart

import 'package:bands_picker/ui/pages/booking_module/screen/booking_details_page.dart';
import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final Map<String, String> booking; // Receive booking data

  const BookingCard({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BookingDetailsPage(booking: booking),
            ),
          );
        },
        leading: CircleAvatar(
          backgroundImage: NetworkImage(booking['image']!),
          radius: 25,
        ),
        title: Text(
          booking['bandName']!,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(booking['date']!),
            const SizedBox(height: 4),
            Text(
              'Status: ${booking['status']}',
              style: TextStyle(
                color: booking['status'] == 'Confirmed'
                    ? Colors.green
                    : booking['status'] == 'Pending'
                    ? Colors.orange
                    : Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              booking['participants']!,
              style: const TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }
}
