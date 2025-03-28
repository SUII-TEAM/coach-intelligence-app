import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentTeam extends StatelessWidget {
  final String logo;
  final String name;
  const CurrentTeam({super.key, required this.logo, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32.r,
          backgroundColor: AppColors.white,
          child: CachedNetworkImage(
            imageUrl: logo,
            height: 50.sp,
          ),
        ),
        AppSpacer(heightRatio: 0.2),
        Text(
          name,
          style: TextStyles.semiBold14.copyWith(color: AppColors.white),
        ),
      ],
    );
  }
}
