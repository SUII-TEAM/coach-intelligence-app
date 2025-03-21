import 'package:ai_tactical_assistant/core/utils/get_storage_helper.dart';
import 'package:easy_localization/easy_localization.dart';

class NumberFormatter {
  /// Formats the given number based on the locale
  static String format(num number) {
    String locale = CacheHelper.getLocale;
    String formattedNumber = NumberFormat.decimalPattern(locale).format(number);

    /// Convert to Arabic numerals if locale is Arabic
    if (locale.startsWith('ar')) {
      return _convertToArabicNumbers(formattedNumber);
    }
    return formattedNumber;
  }

  /// Converts numbers to Arabic numerals
  static String _convertToArabicNumbers(String number) {
    return number
        .replaceAll('0', '٠')
        .replaceAll('1', '١')
        .replaceAll('2', '٢')
        .replaceAll('3', '٣')
        .replaceAll('4', '٤')
        .replaceAll('5', '٥')
        .replaceAll('6', '٦')
        .replaceAll('7', '٧')
        .replaceAll('8', '٨')
        .replaceAll('9', '٩');
  }
}
