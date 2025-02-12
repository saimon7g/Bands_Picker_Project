import 'package:bands_picker/ui/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BookingCard extends StatelessWidget {
  final Map<String, String> booking; // Receive booking data

  const BookingCard({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 2.0,
      child: Container(
        height: 150,
        width: 328,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            // Left Box for Text Content
            Container(
              height: 150,
              width: 236, // Fixed width for the text box

              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    booking['bandName'] ?? 'Artcell Music BD',
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      // fontFamily:
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    booking['date'] ?? '11 February 2023',
                    style: TextStyle(
                      fontSize: 13.0,
                      color: Colors.grey[600],
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Text(
                        'Status: ',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: AppColor.colorBlack,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        '${booking['status'] ?? 'Confirmed'}',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: booking['status'] == 'Confirmed'
                              ? Colors.green
                              : booking['status'] == 'Pending'
                              ? AppColor.secondaryRed
                              : AppColor.secondaryRed, // Conditional color logic based on status
                          fontWeight: FontWeight.w500,

                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8.0),
                  Text(
                    booking['participants'] ?? '5 participants, 10P sound, Lighting, Microphone',
                    style: TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),


            ),
            // Right Box for CircleAvatar
            Container(
              width: 56, // Fixed width for the avatar box
              height: 56,
              alignment: Alignment.topRight,
              child: CircleAvatar(
                backgroundImage: AssetImage(booking['image']!!), // Use AssetImage for local images
                radius: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}