import 'package:bands_picker/ui/components/bookings_module/bookings_card.dart';
import 'package:bands_picker/ui/pages/booking_module/data/dummy_bookings_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:bands_picker/ui/utils/constants/app_colors.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({super.key});

  @override
  _BookingsPageState createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.bookingBackground,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/mdi_music-circle.svg',
              height: 32,
              width: 32,
            ),
            const SizedBox(width: 8),
            const Text.rich(
              TextSpan(
                text: 'Bands',
                style: TextStyle(
                    color: AppColor.primaryPurple,
                    fontWeight: FontWeight.w600,
                    height: 30),
                children: [
                  TextSpan(
                    text: 'Picker',
                    style: TextStyle(
                        color: AppColor.secondaryRed,
                        fontWeight: FontWeight.w600,
                        height: 30),
                  ),
                ],
              ),
            ),
          ],
        ),
        centerTitle: true,
        backgroundColor: AppColor.bookingBackground,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'Confirmed'),
            Tab(text: 'Ongoing'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          _buildBookingList(),
          _buildBookingList(statusFilter: 'Confirmed'),
          _buildBookingList(statusFilter: 'Ongoing'),
        ],
      ),
    );
  }

  Widget _buildBookingList({String? statusFilter}) {
    final filteredBookings = statusFilter == null
        ? bookings
        : bookings.where((b) => b['status'] == statusFilter).toList();

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: filteredBookings.length,
      itemBuilder: (context, index) {
        final booking = filteredBookings[index];
        return BookingCard(booking: booking); // Use the new BookingCard widget
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
// import 'package:flutter/material.dart';

// class BookingsPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text(
//         'Bookings Page',
//         style: TextStyle(fontSize: 24),
//       ),
//     );
//   }
// }
