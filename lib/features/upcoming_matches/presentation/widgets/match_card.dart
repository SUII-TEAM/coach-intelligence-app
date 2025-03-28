import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/features/upcoming_matches/presentation/widgets/match_details.dart';
import 'package:ai_tactical_assistant/features/upcoming_matches/presentation/widgets/team_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MatchCard extends StatelessWidget {
  // final Map<String, String> match;
  const MatchCard({
    super.key,
    //  required this.match
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5.sp),
      padding: EdgeInsets.symmetric(horizontal: 25.sp, vertical: 5.sp),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TeamInfo(
            name: 'نادي النصر السعودي',
            logoUrl: AppAssets.elnasrLogo,
            isLeft: false,
          ),
          Spacer(),
          MatchDetails(
              // match: match
              ),
          Spacer(),
          TeamInfo(
            name: 'نادي النصر السعودي',
            logoUrl: AppAssets.elnasrLogo,
            isLeft: true,
          ),
        ],
      ),
    );
  }
}
