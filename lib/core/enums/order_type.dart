// ignore_for_file: constant_identifier_names

const String ACCRUED_HOLIDAY = 'accrued_holiday';
const String EMERGENCY_HOLIDAY = 'emergency_holiday';
const String UNPAID_HOLIDAY = 'unpaid_holiday';
const String REMOTE = 'from_home';
const String OVERTIME = 'overtime';
const String PERMISSION = 'permission';
const String CUSTODY = 'custody';
const String BORROW_MONEY = 'advance';
const String RESIGNATION = 'resignation';

enum OrderType {
  accruedHoliday,
  emergencyHoliday,
  unPaidHoliday,
  remote,
  overtime,
  permission,
  custody,
  borrowMoney,
  resignation;

  String getServerString() {
    switch (this) {
      case OrderType.accruedHoliday:
        return ACCRUED_HOLIDAY;
      case OrderType.emergencyHoliday:
        return EMERGENCY_HOLIDAY;
      case OrderType.unPaidHoliday:
        return UNPAID_HOLIDAY;
      case OrderType.remote:
        return REMOTE;
      case OrderType.overtime:
        return OVERTIME;
      case OrderType.permission:
        return PERMISSION;
      case OrderType.custody:
        return CUSTODY;
      case OrderType.borrowMoney:
        return BORROW_MONEY;
      case OrderType.resignation:
        return RESIGNATION;
    }
  }

  static OrderType fromStringKey(String key) {
    switch (key) {
      case ACCRUED_HOLIDAY:
        return OrderType.accruedHoliday;
      case EMERGENCY_HOLIDAY:
        return OrderType.emergencyHoliday;
      case UNPAID_HOLIDAY:
        return OrderType.unPaidHoliday;
      case REMOTE:
        return OrderType.remote;
      case OVERTIME:
        return OrderType.overtime;
      case PERMISSION:
        return OrderType.permission;
      case CUSTODY:
        return OrderType.custody;
      case BORROW_MONEY:
        return OrderType.borrowMoney;
      case RESIGNATION:
        return OrderType.resignation;
      default:
        return OrderType.accruedHoliday;
    }
  }
}
