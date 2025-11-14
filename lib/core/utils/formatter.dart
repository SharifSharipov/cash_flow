part of 'utils.dart';

sealed class Formatter {
  Formatter._();

  static final phoneFormatterSendSms = MaskTextInputFormatter(
    mask: '+998 (##) ###-##-##',
    filter: {"#": RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.eager,
  );

  /// Format amount as currency with symbol
  /// Example: formatCurrency(1234567.89) returns "1,234,567.89 so'm"
  static String formatCurrency(double amount) {
    final isNegative = amount < 0;
    final absoluteAmount = amount.abs();

    // Split into integer and decimal parts
    final integerPart = absoluteAmount.floor();
    final decimalPart = ((absoluteAmount - integerPart) * 100).round();

    // Format integer part with thousand separators
    final integerStr = integerPart.toString();
    final buffer = StringBuffer();
    var count = 0;

    for (var i = integerStr.length - 1; i >= 0; i--) {
      if (count > 0 && count % 3 == 0) {
        buffer.write(',');
      }
      buffer.write(integerStr[i]);
      count++;
    }

    final formattedInteger = buffer.toString().split('').reversed.join();
    final formattedDecimal = decimalPart.toString().padLeft(2, '0');

    final sign = isNegative ? '-' : '';
    return "$sign$formattedInteger.$formattedDecimal so'm";
  }


  // static String formatPhoneNumber(String input) {
  //   if (input.length != 12 || !input.startsWith('998')) {
  //     return input;
  //   }

  //   final countryCode = '+${input.substring(0, 3)}';
  //   final operator = input.substring(3, 5);
  //   final part1 = input.substring(5, 8);
  //   final part2 = input.substring(8, 10);
  //   final part3 = input.substring(10, 12);

  //   return '$countryCode ($operator) $part1-$part2-$part3';
  // }

  // static String? validateDate(String value) {
  //   if (value.isEmpty || value.length != 10) {
  //     return S.current.str_date_incomplete;
  //   }

  //   try {
  //     final parts = value.split(".");
  //     final day = int.parse(parts[0]);
  //     final month = int.parse(parts[1]);
  //     final year = int.parse(parts[2]);

  //     if (day < 1 || day > 31) return S.current.str_day_invalid;
  //     if (month < 1 || month > 12) return S.current.str_month_invalid;
  //     if (year < 1900 || year > 2150) {
  //       return S.current.str_year_invalid;
  //     }

  //     final date = DateTime(year, month, day);
  //     if (date.day != day || date.month != month || date.year != year) {
  //       return S.current.str_date_incorrect;
  //     }
  //   } catch (_) {
  //     return S.current.str_format_error;
  //   }

  //   return null;
  // }

  // // Passport formatter va validator
  // static final passportFormatter = MaskTextInputFormatter(
  //   mask: 'AA#######',
  //   filter: {"A": RegExp(r'[A-Za-z]'), "#": RegExp(r'[0-9]')},
  //   type: MaskAutoCompletionType.eager,
  // );

  // static String? validatePassport(String value) {
  //   if (value.isEmpty) return 'Pasport seriya va raqamini kiriting';
  //   if (value.length != 9) return 'Pasport seriya va raqami 9 ta belgidan iborat bo\'lishi kerak';
  //   if (!RegExp(r'^[A-Za-z]{2}[0-9]{7}$').hasMatch(value)) {
  //     return 'Pasport formatda kiriting (masalan: AC1234567)';
  //   }
  //   return null;
  // }

  // static final pinflFormatter = MaskTextInputFormatter(
  //   mask: '##############',
  //   filter: {"#": RegExp(r'[0-9]')},
  //   type: MaskAutoCompletionType.eager,
  // );
  // static String? validatePinfl(String value) {
  //   if (value.isEmpty) return S.current.str_pnfl_req;
  //   if (value.length != 14) return S.current.str_pnfl_len;
  //   if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
  //     return S.current.str_pnfl_dig;
  //   }
  //   return null;
  // }
//   static String? validateBirthday(String value) {
//   if (value.isEmpty || value.length != 10) {
//     return S.current.str_date_incomplete; 
//   }

//   try {
//     final parts = value.split(".");
//     final day = int.parse(parts[0]);
//     final month = int.parse(parts[1]);
//     final year = int.parse(parts[2]);

//     if (day < 1 || day > 31) return S.current.str_day_invalid;
//     if (month < 1 || month > 12) return S.current.str_month_invalid;
//     if (year < 1900 || year > DateTime.now().year) {
//       return S.current.str_year_invalid;
//     }

//     final date = DateTime(year, month, day);

//     if (date.day != day || date.month != month || date.year != year) {
//       return S.current.str_date_incorrect;
//     }
//     if (date.isAfter(DateTime.now())) {
//       return S.current.str_four_mon; 
//     }
//   } catch (_) {
//     return S.current.str_format_error; 
//   }

//   return null;
// }

}
