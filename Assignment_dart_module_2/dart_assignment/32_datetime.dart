import 'package:intl/intl.dart';
void main() {
  // Format date
  DateTime now = DateTime.now();
  print("Date (US): ${DateFormat.yMMMMd('en_US').format(now)}");
  print("Date (Germany): ${DateFormat.yMMMMd('de_DE').format(now)}");

  // Format number
  double number = 12345.67;
  print("Number (US): ${NumberFormat.currency(locale: 'en_US', symbol: '\$').format(number)}");
  print("Number (Germany): ${NumberFormat.currency(locale: 'de_DE', symbol: '€').format(number)}");
}
