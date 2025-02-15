class BandMember {
  String name;
  String uuid;
  String role;

  BandMember({required this.name, required this.uuid, required this.role});

  factory BandMember.fromJson(Map<String, dynamic> json) {
    return BandMember(
      name: json['name'],
      uuid: json['uuid'],
      role: json['role'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uuid': uuid,
      'role': role,
    };
  }
}

class BookingDate {
  DateTime date;
  String location;
  String uuid;
  bool inBangladesh;

  BookingDate({
    required this.date,
    required this.location,
    required this.uuid,
    required this.inBangladesh,
  });

  factory BookingDate.fromJson(Map<String, dynamic> json) {
    return BookingDate(
      date: DateTime.parse(json['date']),
      location: json['location'],
      uuid: json['uuid'],
      inBangladesh: json['inBangladesh'] ?? false, // Default to false if not provided
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'location': location,
      'uuid': uuid,
      'inBangladesh': inBangladesh,
    };
  }
}


class Band {
  String bandName;
  String location;
  List<BandMember> members;
  int numOfConcerts;
  String songType;
  String wayOfTravel;
  String about;
  int minimumPrice;
  List<String> bookingPolicy;
  List<String> cancellationPolicy;
  List<String> coverPhotos;
  List<BookingDate> bookingDates;

  Band({
    required this.bandName,
    required this.location,
    required this.members,
    required this.numOfConcerts,
    required this.songType,
    required this.wayOfTravel,
    required this.about,
    required this.minimumPrice,
    required this.bookingPolicy,
    required this.cancellationPolicy,
    required this.coverPhotos,
    required this.bookingDates,
  });

  factory Band.fromJson(Map<String, dynamic> json) {
    return Band(
      bandName: json['bandName'],
      location: json['location'],
      members: (json['members'] as List)
          .map((memberJson) => BandMember.fromJson(memberJson))
          .toList(),
      numOfConcerts: json['numOfConcerts'],
      songType: json['songType'],
      wayOfTravel: json['wayOfTravel'],
      about: json['about'],
      minimumPrice: json['minimumPrice'],
      bookingPolicy: List<String>.from(json['bookingPolicy']),
      cancellationPolicy: List<String>.from(json['cancellationPolicy']),
      coverPhotos: List<String>.from(json['coverPhotos']),
      bookingDates: (json['bookingDates'] as List)
          .map((dateJson) => BookingDate.fromJson(dateJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'bandName': bandName,
      'location': location,
      'members': members.map((member) => member.toJson()).toList(),
      'numOfConcerts': numOfConcerts,
      'songType': songType,
      'wayOfTravel': wayOfTravel,
      'about': about,
      'minimumPrice': minimumPrice,
      'bookingPolicy': bookingPolicy,
      'cancellationPolicy': cancellationPolicy,
      'coverPhotos': coverPhotos,
      'bookingDates': bookingDates.map((date) => date.toJson()).toList(),
    };
  }
}
