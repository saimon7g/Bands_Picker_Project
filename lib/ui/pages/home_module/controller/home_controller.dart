
import 'package:bands_picker/ui/core/models/band_details_models.dart';
import 'package:bands_picker/ui/core/models/band_member_model.dart';
import 'package:bands_picker/ui/core/models/booking_date_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController implements GetxService{

  HomeController();

  final List<Band> _bands = [
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
      "coverPhotos": ["assets/Nogor Baul.png", "assets/Artcell.png", "assets/Ashes.png"],
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
      "coverPhotos": ["assets/Warfaze.png", "assets/Artcell.png", "assets/Ashes.png"],
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
      "coverPhotos": ["assets/Miles.png", "assets/Artcell.png", "assets/Ashes.png"],
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
      "coverPhotos": ["assets/Ashes.png", "assets/Artcell.png", "assets/Ashes.png"],
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
      "coverPhotos": ["assets/LRB.png", "assets/Artcell.png", "assets/Ashes.png"],
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
      "coverPhotos": ["assets/Chirkut.png", "assets/Artcell.png", "assets/Ashes.png"],
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
      "coverPhotos": ["assets/Nemesis.png", "assets/Artcell.png", "assets/Ashes.png"],
      "bookingDates": [
        {"date": "2025-08-05T00:00:00.000", "location": "Dhaka", "uuid": "113", "inBangladesh": true},
        {"date": "2025-11-12T00:00:00.000", "location": "Chittagong", "uuid": "114", "inBangladesh": true}
      ]
    })
  ];
  List<Band> get band => _bands;


}