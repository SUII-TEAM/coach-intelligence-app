import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/features/home/presentation/pages/home_screen.dart';
import 'package:ai_tactical_assistant/features/side_menu/presentation/pages/side_menu_screen.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(const NavBarState(currentTab: 0));

  List<BottomNavBarEntity> coachNavTabs = <BottomNavBarEntity>[
    const BottomNavBarEntity(
      icon: AppAssets.home,
      boldIcon: AppAssets.homeSolid,
      toolTip: 'home',
      tab: HomeScreen(),
    ),
    const BottomNavBarEntity(
      icon: AppAssets.more,
      boldIcon: AppAssets.moreSolid,
      toolTip: 'profile',
      tab: SideMenuScreen(),
    ),
  ];

  void changeIndex({
    required BottomNavBarEntity tab,
    required List<BottomNavBarEntity> navTabs,
  }) {
    emit(NavBarState(currentTab: navTabs.indexOf(tab)));
  }

  bool isCurrentTab({
    required BottomNavBarEntity bottomNavBarEntity,
    required List<BottomNavBarEntity> navTabs,
  }) =>
      navTabs.indexOf(bottomNavBarEntity) == state.currentTab;

  void updateIndex(int tab) {
    emit(NavBarState(currentTab: tab));
  }
}

class BottomNavBarEntity extends Equatable {
  final String icon;
  final String boldIcon;
  final String toolTip;
  final Widget tab;

  const BottomNavBarEntity({
    required this.icon,
    required this.boldIcon,
    required this.toolTip,
    required this.tab,
  });

  @override
  List<Object?> get props => <Object?>[
        icon,
        boldIcon,
        toolTip,
        tab,
      ];
}
