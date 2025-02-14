import 'package:intl/intl.dart';

class ChatMessage {
  final String name;
  final String message;
  final String time;
  final String date;
  final int notSeenMessageAmount;

  ChatMessage({
    required this.name,
    required this.message,
    required DateTime dateTime,
    required this.notSeenMessageAmount,
  })  : time = DateFormat('h:mm a').format(dateTime),
        date = DateFormat('dd MMM yyyy').format(dateTime);

  // Convert JSON to Model
  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      name: json['name'],
      message: json['message'],
      dateTime: DateTime.parse(json['dateTime']),
      notSeenMessageAmount: json['notSeenMessageAmount'],
    );
  }

  DateTime? get dateTime => null;

  // Convert Model to JSON
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'message': message,
      'dateTime': DateTime.now().toIso8601String(), // Store original DateTime
      'notSeenMessageAmount': notSeenMessageAmount,
    };
  }
}
