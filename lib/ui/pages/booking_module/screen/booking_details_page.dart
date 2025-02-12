import 'package:bands_picker/ui/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';

class BookingDetailsPage extends StatelessWidget {
  final Map<String, String> booking; // Receiving booking data

  const BookingDetailsPage({Key? key, required this.booking}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bookingBackground,
      appBar: AppBar(
        title: const Text(
          'Booking Details',
          style: TextStyle(
            color: AppColor.colorBlack,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: AppColor.colorWhite,
        elevation: 0,
        iconTheme: const IconThemeData(color: AppColor.colorBlack), // Change back arrow color here
      ),
      body: Container(
        color: AppColor.bookingBackground,
        padding: const EdgeInsets.all(16.0), // ✅ Correct padding applied here
        child: Container(
          color: AppColor.colorWhite,
          padding: const EdgeInsets.all(16.0), // ✅ Correct padding applied here
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Booked Band',
                  style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 16),

                // Band Name
                Text(
                  booking['bandName'] ?? 'Artcell Music BD',
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),

                Text(
                  'Number of Participants: ${booking['participants'] ?? '5 participants'}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  'Booked on: ${booking['date'] ?? '11 Feb 2023'}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 8),
                Text(
                  'Booking ID: ${booking['id'] ?? '2023M456987'}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),

                const Divider(),


                // About Section
                const Text(
                  'About the Band',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Artcell Music BD is a progressive rock band from Bangladesh known for their powerful lyrics and complex compositions.',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 16),

                const Divider(),


                // Price Breakdown
                const Text(
                  'Price Breakdown',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const ListTile(
                  title: Text('Performance'),
                  trailing: Text('BDT 60,000'),
                ),
                const ListTile(
                  title: Text('Sound'),
                  trailing: Text('BDT 30,000'),
                ),
                const ListTile(
                  title: Text('Lighting'),
                  trailing: Text('BDT 10,000'),
                ),
                const ListTile(
                  title: Text('Microphone'),
                  trailing: Text('BDT 5,000'),
                ),
                const ListTile(
                  title: Text('Travel Cost'),
                  trailing: Text('BDT 20,000'),
                ),
                const Divider(),
                const ListTile(
                  title: Text(
                    'Total (BDT)',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  trailing: Text(
                    'BDT 125,000',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
