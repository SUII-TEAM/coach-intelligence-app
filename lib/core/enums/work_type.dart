// ignore_for_file: constant_identifier_names

const String FULL_TIME = 'full_time';
const String PART_TIME = 'part_time';
const String INTERNSHIP = 'internship';

enum WorkType {
  fullTime,
  partTime,
  internship;

  String getServerString() {
    switch (this) {
      case WorkType.fullTime:
        return FULL_TIME;
      case WorkType.partTime:
        return PART_TIME;
      case WorkType.internship:
        return INTERNSHIP;
    }
  }

  static WorkType fromStringKey(String key) {
    switch (key) {
      case FULL_TIME:
        return WorkType.fullTime;
      case PART_TIME:
        return WorkType.partTime;
      case INTERNSHIP:
        return WorkType.internship;
      default:
        return WorkType.fullTime;
    }
  }
}
