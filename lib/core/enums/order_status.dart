// ignore_for_file: constant_identifier_names

const String PENDING = 'pending';
const String APPROVED = 'approved';
const String REJECTED = 'rejected';

enum OrderStatus {
  pending,
  approved,
  rejected;

  String getServerString() {
    switch (this) {
      case OrderStatus.approved:
        return APPROVED;
      case OrderStatus.pending:
        return PENDING;
      case OrderStatus.rejected:
        return REJECTED;
    }
  }

  static OrderStatus fromStringKey(String key) {
    switch (key) {
      case PENDING:
        return OrderStatus.pending;
      case APPROVED:
        return OrderStatus.approved;
      case REJECTED:
        return OrderStatus.rejected;
      default:
        return OrderStatus.pending;
      }
  }
}
