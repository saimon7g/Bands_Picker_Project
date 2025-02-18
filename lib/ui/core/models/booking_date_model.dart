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
      inBangladesh: json['inBangladesh'] ?? false,
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