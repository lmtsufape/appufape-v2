import 'package:intl/intl.dart';

class CustomDateFormater {
  //date time string to date time
  static DateTime stringToDateTime(String dateTimeString) {
    return DateTime.parse(dateTimeString.toString());
  }

  //date time to formatted string
  static String dateTimeToString(DateTime dateTime) {
    //date format with day, month and hour
    return DateFormat('dd/MM/yyyy').format(dateTime);
  }

  static String dateTimeWithHourToString(DateTime dateTime) {
    return DateFormat('dd/MM/yyyy HH:mm').format(dateTime);
  }
}
