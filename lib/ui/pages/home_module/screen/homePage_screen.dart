import 'package:bands_picker/ui/utils/constants/appsColor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../core/models/band_details_models.dart';
import 'ReUsableWidget/BandsCardContainer.dart';



class HomePage extends StatelessWidget {

  final List<Band> bands = [
    Band.fromJson({
      "bandName": "Artcell",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "Lincoln", "uuid": "001", "role": "Vocalist"},
        {"name": "Cezanne", "uuid": "002", "role": "Guitarist"}
      ],
      "numOfConcerts": 100,
      "songType": "Progressive Rock",
      "wayOfTravel": "Bus",
      "about": "Artcell is a progressive metal band from Bangladesh.",
      "minimumPrice": 50000,
      "bookingPolicy": ["Advance payment required", "Non-refundable"],
      "cancellationPolicy": ["Cancellation allowed within 7 days"],
      "coverPhotos": ["assets/Artcell.png", "assets/Ashes.png"],
      "bookingDates": [
        {"date": "2025-06-01T00:00:00.000", "location": "Dhaka", "uuid": "101"},
        {"date": "2025-07-15T00:00:00.000", "location": "Chittagong", "uuid": "102"}
      ]
    }),

    Band.fromJson({
      "bandName": "Nogor Baul",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "James", "uuid": "003", "role": "Vocalist"}
      ],
      "numOfConcerts": 200,
      "songType": "Rock",
      "wayOfTravel": "Car",
      "about": "Nogor Baul is a popular rock band in Bangladesh.",
      "minimumPrice": 70000,
      "bookingPolicy": ["Advance payment required", "Refundable within 3 days"],
      "cancellationPolicy": ["Cancellation allowed within 5 days"],
      "coverPhotos": ["Nogor Baul.png", "Ashes.png"],
      "bookingDates": [
        {"date": "2025-08-10T00:00:00.000", "location": "Sylhet", "uuid": "103", "inBangladesh": true},
        {"date": "2025-09-05T00:00:00.000", "location": "Khulna", "uuid": "104", "inBangladesh": true}
      ]
    }),

    Band.fromJson({
      "bandName": "Warfaze",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "Oni Hasan", "uuid": "005", "role": "Guitarist"},
        {"name": "Kamrul", "uuid": "006", "role": "Drummer"}
      ],
      "numOfConcerts": 150,
      "songType": "Heavy Metal",
      "wayOfTravel": "Bus",
      "about": "Warfaze is a legendary heavy metal band from Bangladesh.",
      "minimumPrice": 60000,
      "bookingPolicy": ["Advance payment required", "Non-refundable"],
      "cancellationPolicy": ["Cancellation allowed within 10 days"],
      "coverPhotos": ["warfaze1.jpg", "warfaze2.jpg"],
      "bookingDates": [
        {"date": "2025-10-20T00:00:00.000", "location": "Rajshahi", "uuid": "105", "inBangladesh": true},
        {"date": "2025-11-25T00:00:00.000", "location": "Barisal", "uuid": "106", "inBangladesh": true}
      ]
    }),

    Band.fromJson({
      "bandName": "Miles",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "Hamin Ahmed", "uuid": "001", "role": "Vocalist"},
        {"name": "Manam Ahmed", "uuid": "002", "role": "Guitarist"},
        {"name": "Syed Ziaur Rahman Turjo", "uuid": "003", "role": "Keyboardist"}
      ],
      "numOfConcerts": 200,
      "songType": "Rock",
      "wayOfTravel": "Flight",
      "about": "Miles is one of the pioneering rock bands in Bangladesh, known for their timeless music.",
      "minimumPrice": 80000,
      "bookingPolicy": ["50% advance payment required", "Refundable within 7 days"],
      "cancellationPolicy": ["Cancellation allowed within 14 days"],
      "coverPhotos": ["miles1.jpg", "miles2.jpg"],
      "bookingDates": [
        {"date": "2025-09-15T00:00:00.000", "location": "Dhaka", "uuid": "101", "inBangladesh": true},
        {"date": "2025-12-10T00:00:00.000", "location": "Chittagong", "uuid": "102", "inBangladesh": true}
      ]
    }),

    Band.fromJson({
      "bandName": "Ashes",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "Shafin Ahmed", "uuid": "007", "role": "Vocalist"},
        {"name": "Ibrar Tipu", "uuid": "008", "role": "Guitarist"},
        {"name": "Sumon", "uuid": "009", "role": "Drummer"}
      ],
      "numOfConcerts": 180,
      "songType": "Pop Rock",
      "wayOfTravel": "Bus",
      "about": "Ashes is a popular Bangladeshi band known for their melodious pop-rock songs.",
      "minimumPrice": 70000,
      "bookingPolicy": ["Full payment required", "Non-refundable"],
      "cancellationPolicy": ["Cancellation allowed within 5 days"],
      "coverPhotos": ["ashes1.jpg", "ashes2.jpg"],
      "bookingDates": [
        {"date": "2025-08-22T00:00:00.000", "location": "Sylhet", "uuid": "107", "inBangladesh": true},
        {"date": "2025-11-18T00:00:00.000", "location": "Khulna", "uuid": "108", "inBangladesh": true}
      ]
    }),

    Band.fromJson({
      "bandName": "LRB",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "Ayub Bachchu", "uuid": "010", "role": "Vocalist and Guitarist"},
        {"name": "Shuvo", "uuid": "011", "role": "Bassist"},
        {"name": "Mithu", "uuid": "012", "role": "Drummer"}
      ],
      "numOfConcerts": 300,
      "songType": "Rock",
      "wayOfTravel": "Flight",
      "about": "LRB is one of the most iconic rock bands in Bangladesh, led by the legendary Ayub Bachchu.",
      "minimumPrice": 100000,
      "bookingPolicy": ["30% advance payment required", "Refundable within 10 days"],
      "cancellationPolicy": ["Cancellation allowed within 7 days"],
      "coverPhotos": ["lrb1.jpg", "lrb2.jpg"],
      "bookingDates": [
        {"date": "2025-07-30T00:00:00.000", "location": "Dhaka", "uuid": "109", "inBangladesh": true},
        {"date": "2025-10-05T00:00:00.000", "location": "Chittagong", "uuid": "110", "inBangladesh": true}
      ]
    }),

    Band.fromJson({
      "bandName": "Chirkut",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "Tanzir Tuhin", "uuid": "013", "role": "Vocalist"},
        {"name": "Sharmin Sultana Sumi", "uuid": "014", "role": "Vocalist"},
        {"name": "Pavel Areen", "uuid": "015", "role": "Guitarist"}
      ],
      "numOfConcerts": 120,
      "songType": "Fusion",
      "wayOfTravel": "Bus",
      "about": "Chirkutt is a unique band blending traditional Bangladeshi music with modern fusion.",
      "minimumPrice": 50000,
      "bookingPolicy": ["Full payment required", "Non-refundable"],
      "cancellationPolicy": ["Cancellation allowed within 3 days"],
      "coverPhotos": ["chirkutt1.jpg", "chirkutt2.jpg"],
      "bookingDates": [
        {"date": "2025-09-10T00:00:00.000", "location": "Rajshahi", "uuid": "111", "inBangladesh": true},
        {"date": "2025-12-20T00:00:00.000", "location": "Barisal", "uuid": "112", "inBangladesh": true}
      ]
    }),

    Band.fromJson({
      "bandName": "Nemesis",
      "location": "Dhaka, Bangladesh",
      "members": [
        {"name": "Maher Khan", "uuid": "016", "role": "Vocalist"},
        {"name": "Shams", "uuid": "017", "role": "Guitarist"},
        {"name": "Bassbaba Sumon", "uuid": "018", "role": "Bassist"}
      ],
      "numOfConcerts": 250,
      "songType": "Hard Rock",
      "wayOfTravel": "Flight",
      "about": "Nemesis is a legendary hard rock band from Bangladesh, known for their powerful performances.",
      "minimumPrice": 90000,
      "bookingPolicy": ["20% advance payment required", "Refundable within 5 days"],
      "cancellationPolicy": ["Cancellation allowed within 7 days"],
      "coverPhotos": ["nemesis1.jpg", "nemesis2.jpg"],
      "bookingDates": [
        {"date": "2025-08-05T00:00:00.000", "location": "Dhaka", "uuid": "113", "inBangladesh": true},
        {"date": "2025-11-12T00:00:00.000", "location": "Chittagong", "uuid": "114", "inBangladesh": true}
      ]
    })
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
        appBar: AppBar(
          backgroundColor: AppColor.backgroundColor,
          title: Center(
            child: Container(
              width: 360,
              height: 64,
              child: Image.asset("assets/Frame 11111.png", fit: BoxFit.contain),
            ),
          ),
        ),
        body: ListView(
        children: [
          Container(
            width: 328,
            height: 50,
            //margin: EdgeInsets.fromLTRB(16, 40, 0, 0),
            padding: EdgeInsets.fromLTRB(8, 3, 8, 3),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: SvgPicture.asset(
                    "assets/search.svg",
                    width: 24,
                    height: 24,
                  ),
                ),
                hintText: "Search",
                hintStyle: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 19.5 / 13,
                  letterSpacing: 0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              onChanged: (value) {
                print('Search query: $value');
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 10, 5, 3),
            child: Text(
                'Featured',
                style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 13,
                height: 19.5 / 13,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 10,8,3),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      band: bands[0]
                    ),
                    BandCard(
                      band: bands[1]
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      band: bands[2]
                    ),
                    BandCard(
                      band: bands[3]
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 10, 5, 3),
            child: Text(
              'Popular',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                fontSize: 13,
                height: 19.5 / 13,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 10,5,3),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      band: bands[4]
                    ),
                    BandCard(
                      band: bands[5]
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BandCard(
                      band: bands[6]
                    ),
                    BandCard(
                      band: bands[7]
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}


class BandDetails extends StatefulWidget {
  @override
  _BandDetailsState createState() => _BandDetailsState();
}

class _BandDetailsState extends State<BandDetails> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  late Band band;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final Band receivedBand = ModalRoute.of(context)?.settings.arguments as Band;
    setState(() {
      band = receivedBand;
      images = band.coverPhotos;
    });
  }

  List<String> images = [];


  void _nextPage() {
    if (_currentPage < images.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _previousPage() {
    if (_currentPage > 0) {
      _pageController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("${band.bandName} Details")),
      backgroundColor: AppColor.backgroundColor,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 246,
            child: Stack(
              alignment: Alignment.center,
              children: [
                PageView.builder(
                  controller: _pageController,
                  itemCount: images.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 350,
                      ),
                    );
                  },
                ),
                Positioned(
                  left: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: AppColor.arrowIconColor),
                    onPressed: _previousPage,
                  ),
                ),
                Positioned(
                  right: 10,
                  child: IconButton(
                    icon: Icon(Icons.arrow_forward_ios, color: AppColor.arrowIconColor),
                    onPressed: _nextPage,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Text("${band.bandName}",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              height: 30 / 20,
              letterSpacing: 0,
            ),
          ),
          SizedBox(height: 8,),
          Text("${band.location}",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.w500,
              fontSize: 10,
              height: 15 / 10,
              letterSpacing: 0,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  SvgPicture.asset(
                    "assets/Band_Details_Page/user.svg",
                    width: 20,
                    height: 20,
                  ),
                  //Icon(Icons.person),
                  SizedBox(height: 5,),
                  Text("${band.members.length}"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack),
                  SizedBox(height: 5,),
                  Text("${band.numOfConcerts}"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.audiotrack),
                  SizedBox(height: 5,),
                  Text("${band.songType}"),
                ],
              ),
              Column(
                children: [
                  Icon(Icons.flight),
                  SizedBox(height: 5,),
                  Text("${band.wayOfTravel}"),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          Text("About ${band.bandName}", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text("${band.about}"),
          SizedBox(height: 20,),
          Text("Price Details", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Row(
            children: [
              Icon(Icons.attach_money),
              Text("Start from ${band.minimumPrice}"),
            ],
          ),
          ElevatedButton(
            onPressed: ()=> Navigator.pushNamed(context, '/bookingPolicies'),
            child: Container(
              color: AppColor.bookingReqColor,
              child: Center(
                child: Text(
                  "Request For Book", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BookingPolicies extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("\u2022"),
                SizedBox(width: 5,),
                Text("What are the reasons of flight cancellation when atmorspheric pressure is 1052 hPa"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}