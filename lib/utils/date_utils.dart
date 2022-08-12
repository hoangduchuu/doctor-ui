import 'package:intl/intl.dart';

class DateConverter {
  static String printMonthDayYear(dynamic text) {
    if (text == null) {
      return '';
    }
    if (text is int || text is double) {
      text = text.toString();
    }
    try {
      var formatter = DateFormat('MMM-dd-yyyy');
      DateTime flagDate = DateTime.parse(text);
      return formatter.format(flagDate);
    } catch (ex) {
      return text;
    }
  }
  static String printTime(dynamic text) {
    if (text == null) {
      return '';
    }
    if (text is int || text is double) {
      text = text.toString();
    }
    try {
      var formatter = DateFormat('h:mm a');
      DateTime flagDate = DateTime.parse(text);
      return formatter.format(flagDate);
    } catch (ex) {
      return text;
    }
  }
}
