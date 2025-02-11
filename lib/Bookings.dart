import 'package:flutter/material.dart';

class BookingsPage extends StatefulWidget {
  @override
  _BookingsPageState createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Map<String, String>> bookings = [
    {
      'bandName': 'Artcell Music BD',
      'date': '11 February 2023',
      'status': 'Confirmed',
      'participants': '5 participants, 10P sound, Lighting, Microphone',
      'image': 'https://via.placeholder.com/50'
    },
    {
      'bandName': 'Shironmahin',
      'date': '11 February 2023',
      'status': 'Pending',
      'participants': '5 participants, 10P sound, Lighting, Microphone',
      'image': 'https://via.placeholder.com/50'
    },
    {
      'bandName': 'Miles',
      'date': '11 February 2023',
      'status': 'Cancelled',
      'participants': '5 participants, 10P sound, Lighting, Microphone',
      'image': 'https://via.placeholder.com/50'
    },
    {
      'bandName': 'Dads In The Park',
      'date': '11 February 2025',
      'status': 'Pending',
      'participants': '50 participants, 10P sound, Lighting, Microphone',
      'image': 'https://via.placeholder.com/50'
    },
    {
      'bandName': 'Shironmahin',
      'date': '11 February 2023',
      'status': 'Pending',
      'participants': '5 participants, 10P sound, Lighting, Microphone',
      'image': 'https://via.placeholder.com/50'
    },
    {
      'bandName': 'Miles',
      'date': '11 February 2023',
      'status': 'Cancelled',
      'participants': '5 participants, 10P sound, Lighting, Microphone',
      'image': 'https://via.placeholder.com/50'
    },
    {
      'bandName': 'Dads In The Park',
      'date': '11 February 2025',
      'status': 'Pending',
      'participants': '50 participants, 10P sound, Lighting, Microphone',
      'image': 'https://via.placeholder.com/50'
    },



  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text.rich(
          TextSpan(
            text: 'Bands',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            children: [
              TextSpan(
                text: 'picker',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.red,
          unselectedLabelColor: Colors.black54,
          indicatorColor: Colors.red,
          tabs: const [
            Tab(text: 'All'),
            Tab(text: 'Upcoming'),
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
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 3,
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: ListTile(
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
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
