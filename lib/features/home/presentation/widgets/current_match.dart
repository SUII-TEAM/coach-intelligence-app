import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/features/home/presentation/widgets/current_match_teams.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentMatch extends StatelessWidget {
  const CurrentMatch({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.currentMatch),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 35.sp, vertical: 12.sp),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                tr('current_match'),
                style: TextStyles.bold18.copyWith(color: AppColors.secondary),
              ),
              Spacer(),
              CurrentMatchTeams(),
              Spacer(),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.secondary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.r)),
                  padding:
                      EdgeInsets.symmetric(horizontal: 30.sp, vertical: 5.sp),
                  minimumSize: Size(120.sp, 0.sp),
                ),
                child: Text(
                  tr('current_match_details'),
                  style: TextStyles.bold12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
