import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({
    super.key,
    // required this.match,
  });

  // final Map<String, String> match;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('27 مارس 2025', style: TextStyles.bold12),
        Row(
          children: [
            SvgPicture.asset(AppAssets.time, height: 15.sp),
            SizedBox(width: 7.sp),
            Text('5:30 مساء', style: TextStyles.regular10),
          ],
        ),
        Row(
          children: [
            SvgPicture.asset(AppAssets.location, height: 15.sp),
            SizedBox(width: 7.sp),
            Text('ملعب الأول بارك', style: TextStyles.regular10),
          ],
        ),
      ],
    );
  }
}
