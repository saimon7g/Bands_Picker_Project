import 'package:intl/intl.dart';

class ChatMessage {
  final String name;
  final String message;
  final String time;
  final String date;
  final int notSeenMessageAmount;
  final String? imagePath;

  ChatMessage({
    required this.name,
    required this.message,
    required DateTime dateTime,
    required this.notSeenMessageAmount,
    this.imagePath,
  })  : time = DateFormat('h:mm a').format(dateTime), //: is called an initializer list. It's used to set values before the body of the constructor runs.
        date = DateFormat('dd MMMM yyyy').format(dateTime);

  // Convert JSON to Model
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      name: json['name'],
      message: json['message'],
      dateTime: DateTime.parse(json['dateTime']),
      notSeenMessageAmount: json['notSeenMessageAmount'],
      imagePath: json['imagePath'],
    );
  }

  DateTime? get dateTime => null;

  // Convert Model to JSON8
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'message': message,
      'dateTime': DateTime.now().toIso8601String(), // Store original DateTime
      'notSeenMessageAmount': notSeenMessageAmount,
      'imagePath': imagePath,
    };
  }
}
