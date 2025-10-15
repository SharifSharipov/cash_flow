part of 'extension.dart';
extension StringExtensions on String {
  double toDoubleOrZero() {
    return convertToDouble(this);
  }

  int toIntOrZero() {
    return convertToInt(this);
  }
}

double convertToDouble(String number) {
  if (number.isEmpty) {
    return 0;
  }
  // Remove commas from the string
  String cleanedNumber = number.replaceAll(',', '');

  // Convert the cleaned string to an integer
  return double.parse(cleanedNumber);
}

int convertToInt(String number) {
  if (number.isEmpty) {
    return 0;
  }
  // Remove commas from the string
  String cleanedNumber = number.replaceAll(',', '');

  // Convert the cleaned string to an integer
  return int.parse(cleanedNumber);
}