import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/features/upcoming_matches/presentation/widgets/match_card.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpcomingMatchScreen extends StatelessWidget {
  const UpcomingMatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        title: Text(
          tr('upcoming_matches'),
          style: TextStyles.bold16.copyWith(color: AppColors.primary),
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 20.sp, right: 20.sp, bottom: 14.sp, top: 8.sp),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.r),
                bottomRight: Radius.circular(16.r),
              ),
            ),
            child: TextFormField(
              onTapOutside: (_) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                labelText: tr('search_by_team_name'),
                prefixIcon: Icon(Icons.search, color: AppColors.grey),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.sp, vertical: 0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: AppColors.primary, width: 1.sp),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide:
                      BorderSide(color: Colors.grey.shade300, width: 1.sp),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(14.sp),
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return MatchCard();
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
