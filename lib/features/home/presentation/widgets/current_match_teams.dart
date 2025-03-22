import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentMatchTeams extends StatelessWidget {
  const CurrentMatchTeams({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundImage: AssetImage(AppAssets.appLogoGreen),
              backgroundColor: Colors.white,
            ),
            // SizedBox(height: 8.h),
            Text('نادي الهلال السعودي', style: TextStyles.semiBold12),
          ],
        ),
        Text('ضد', style: TextStyles.semiBold12),
        Column(
          children: [
            CircleAvatar(
              radius: 25.r,
              backgroundImage: AssetImage(AppAssets.appLogoGreen),
              backgroundColor: Colors.white,
            ),
            // SizedBox(height: 8.h),
            Text('نادي النصر السعودي', style: TextStyles.semiBold12),
          ],
        ),
      ],
    );
  }
}
