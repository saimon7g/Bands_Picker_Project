import 'package:intl/intl.dart';

class DateHelper {
  static String formatDateTime(DateTime dateTime, bool isSeen) {
    if (isSeen) {
      return DateFormat('dd MMMM yyyy').format(dateTime); // Show full date if seen
    } else {
      return DateFormat('h:mm a').format(dateTime); // Show time in AM/PM format if not seen
    }
  }
}


//bool isSeen = chat.notSeenMessageAmount == 0 (message_screen.dart line:22)
// isSeen: This is a boolean variable (either true or false). It indicates whether the message has been seen by the
// recipient. This value is passed to the formatDateTime function so that it can format the date/time differently
// depending on whether the message has been seen.


// chat.dateTime stores the message's date and time. DateTime.now() gets the current date and time.  The code uses the'
// ' message's date and time if available, otherwise it uses the current time.  It then formats this date and time for
// display, showing the date if the message is seen and the time if it's not.