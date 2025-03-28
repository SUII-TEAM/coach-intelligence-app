import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:ai_tactical_assistant/features/team_players/presentation/widgets/player_card.dart';
import 'package:ai_tactical_assistant/features/team_players/presentation/widgets/player_category_filter.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamPlayersScreen extends StatelessWidget {
  const TeamPlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final categories = ['كل اللاعبين', 'مهاجم', 'وسط', 'مدافع', 'حارس مرمى'];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          tr('team_members'),
          style: TextStyles.bold16.copyWith(color: AppColors.primary),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(14.sp),
        child: Column(
          children: [
            TextFormField(
              onTapOutside: (_) =>
                  FocusManager.instance.primaryFocus?.unfocus(),
              cursorColor: AppColors.primary,
              decoration: InputDecoration(
                labelText: tr('search_by_team_member'),
                prefixIcon: Icon(Icons.search, color: AppColors.grey),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 24.sp, vertical: 0),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.r),
                  borderSide: BorderSide(color: AppColors.primary, width: 1.sp),
                ),
              ),
            ),
            AppSpacer(heightRatio: 0.5),
            SizedBox(
              height: 35.sp,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) =>
                    AppSpacer(widthRatio: 0.2),
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return PlayerCategoryFilter(
                    label: categories[index],
                    isSelected: index == 0,
                  );
                },
              ),
            ),
            AppSpacer(heightRatio: 0.5),
            Expanded(
              child: SingleChildScrollView(
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 8.sp,
                    mainAxisSpacing: 8.sp,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return PlayerCard();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
