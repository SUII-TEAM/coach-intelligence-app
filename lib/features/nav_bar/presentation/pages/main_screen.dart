import 'dart:core';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:ai_tactical_assistant/features/home/presentation/pages/home_screen.dart';
import 'package:ai_tactical_assistant/features/nav_bar/presentation/cubit/nav_bar_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<SignInCubit, SignInState>(
    //   builder: (context, signInState) {
    // final UserRole currentRole = sl<SignInCubit>().user.type;
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (context, state) {
        final navigationCubit = context.read<NavBarCubit>();
        // final roleData = _getRoleData(currentRole, navigationCubit);
        return Scaffold(
          body: HomeScreen(),
          //  Builder(
          //   builder: (context) {
          //     return roleData[state.currentTab].tab;
          //   },
          // ),
          bottomNavigationBar: _buildBottomNavigationBar(
            navigationCubit,
            navigationCubit.coachNavTabs,
            0,
            // state.currentTab,
          ),
        );
        //       },
        //     );
      },
    );
  }

  // List<BottomNavBarEntity> _getRoleData(
  //     UserRole role, NavBarCubit navigationCubit) {
  //   switch (role) {
  //     case UserRole.hr:
  //       return navigationCubit.hrNavTabs;
  //     case UserRole.employee:
  //       return navigationCubit.employeeNavTabs;
  //     case UserRole.manager:
  //       return navigationCubit.managerNavTabs;
  //     case UserRole.pm:
  //       return navigationCubit.pmNavTabs;
  //     case UserRole.teamLeader:
  //       return navigationCubit.teamLeaderNavTabs;
  //   }
  // }

  Widget _buildBottomNavigationBar(
    NavBarCubit navigationCubit,
    List<BottomNavBarEntity> items,
    int currentTab,
  ) {
    return SafeArea(
      child: BlocBuilder<NavBarCubit, NavBarState>(
        builder: (BuildContext context, NavBarState state) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 16.sp),
            margin: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 10.sp),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              color: AppColors.primary,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: items
                          .map(
                            (BottomNavBarEntity e) => BottomNavBarItem(
                              bottomNavBarEntity: e,
                              allItems: items,
                            ),
                          )
                          .toList()),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class BottomNavBarItem extends StatelessWidget {
  final BottomNavBarEntity bottomNavBarEntity;
  final List<BottomNavBarEntity> allItems;

  const BottomNavBarItem({
    super.key,
    required this.bottomNavBarEntity,
    required this.allItems,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavBarCubit, NavBarState>(
      builder: (BuildContext context, NavBarState state) {
        bool isCurrentTab = context.read<NavBarCubit>().isCurrentTab(
            bottomNavBarEntity: bottomNavBarEntity, navTabs: allItems);
        return InkWell(
          borderRadius: BorderRadius.circular(40.sp),
          child: Tooltip(
            message: tr(bottomNavBarEntity.toolTip),
            child: Row(
              children: [
                SvgPicture.asset(
                  isCurrentTab
                      ? bottomNavBarEntity.boldIcon
                      : bottomNavBarEntity.icon,
                  height: 20.sp,
                  colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
                AppSpacer(widthRatio: 0.4),
                Text(
                  tr(bottomNavBarEntity.toolTip),
                  style: isCurrentTab
                      ? TextStyles.bold14.copyWith(color: AppColors.white)
                      : TextStyles.regular14.copyWith(color: AppColors.white),
                ),
              ],
            ),
          ),
          onTap: () => context
              .read<NavBarCubit>()
              .changeIndex(tab: bottomNavBarEntity, navTabs: allItems),
        ).animate()
          ..scaleXY();
      },
    );
  }
}
