// ignore_for_file: constant_identifier_names

const String EMPLOYEE = 'employee';
const String TEAM_LEADER = 'team_leader';
const String PM = 'pm';
const String HR = 'hr';
const String MANAGER = 'manager';

enum UserRole {
  employee,
  teamLeader,
  pm,
  hr,
  manager;

  String getServerString() {
    switch (this) {
      case UserRole.employee:
        return EMPLOYEE;
      case UserRole.teamLeader:
        return TEAM_LEADER;
      case UserRole.pm:
        return PM;
      case UserRole.hr:
        return HR;
      case UserRole.manager:
        return MANAGER;
    }
  }

  static UserRole fromStringKey(String key) {
    switch (key) {
      case EMPLOYEE:
        return UserRole.employee;
      case TEAM_LEADER:
        return UserRole.teamLeader;
      case PM:
        return UserRole.pm;
      case HR:
        return UserRole.hr;
      case MANAGER:
        return UserRole.manager;
      default:
        return UserRole.employee;
    }
  }
}
