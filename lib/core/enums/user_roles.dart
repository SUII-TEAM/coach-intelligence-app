// ignore_for_file: constant_identifier_names

const String COACH = 'coach';

enum UserRole {
  coach;

  String getServerString() {
    switch (this) {
      case UserRole.coach:
        return COACH;
    }
  }

  static UserRole fromStringKey(String key) {
    switch (key) {
      case COACH:
        return UserRole.coach;
      default:
        return UserRole.coach;
    }
  }
}
