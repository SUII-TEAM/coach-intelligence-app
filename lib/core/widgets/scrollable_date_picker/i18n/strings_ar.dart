part of 'date_picker_i18n.dart';

/// Arabic (AR)
class _StringsAr extends _StringsI18n {
  const _StringsAr();

  @override
  String getCancelText() {
    return 'ألغاء';
  }

  @override
  String getDoneText() {
    return 'تم';
  }

  @override
  List<String> getMonths() {
    return <String>[
      'يناير',
      'فبراير',
      'مارس',
      'ابريل',
      ' مايو',
      'يونيو',
      'يوليو',
      'اغسطس',
      'سبتمبر',
      'اكتوبر',
      'نوفمبر',
      'ديسمبر',
    ];
  }

  @override
  List<String> getWeeksFull() {
    return <String>[
      'الأثنين',
      'الثلاثاء',
      'الأربعاء',
      'الخميس',
      'الجمعه',
      'السبت',
      'الأحد',
    ];
  }

  @override
  List<String>? getWeeksShort() {
    return null;
  }
}
