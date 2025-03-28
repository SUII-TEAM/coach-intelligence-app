import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:ai_tactical_assistant/features/home/presentation/widgets/current_match.dart';
import 'package:ai_tactical_assistant/features/home/presentation/widgets/section_header.dart';
import 'package:ai_tactical_assistant/features/team_players/presentation/pages/team_players_screen.dart';
import 'package:ai_tactical_assistant/features/team_players/presentation/widgets/player_card.dart';
import 'package:ai_tactical_assistant/features/upcoming_matches/presentation/pages/upcoming_match_screen.dart';
import 'package:ai_tactical_assistant/features/upcoming_matches/presentation/widgets/match_card.dart';
import 'package:ai_tactical_assistant/injection_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          tr('home'),
          style: TextStyles.bold16.copyWith(color: AppColors.primary),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppAssets.notification,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp, vertical: 14.sp),
          child: SingleChildScrollView(
            child: Column(
              children: [
                CurrentMatch(),
                AppSpacer(heightRatio: 0.3),
                SectionHeader(
                  title: tr('upcoming_matches'),
                  onTap: () {
                    appNavigator.push(screen: UpcomingMatchScreen());
                  },
                ),
                AppSpacer(heightRatio: 0.3),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return MatchCard();
                  },
                ),
                AppSpacer(heightRatio: 0.3),
                SectionHeader(
                  title: tr('team_members'),
                  onTap: () {
                    appNavigator.push(screen: TeamPlayersScreen());
                  },
                ),
                AppSpacer(heightRatio: 0.3),
                GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.sp,
                    mainAxisSpacing: 8.sp,
                    childAspectRatio: 0.68,
                  ),
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return PlayerCard();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
