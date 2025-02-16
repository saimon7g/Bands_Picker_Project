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
