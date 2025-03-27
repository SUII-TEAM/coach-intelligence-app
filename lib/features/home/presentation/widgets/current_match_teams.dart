import 'package:ai_tactical_assistant/core/constants/app_assets.dart';
import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/features/home/presentation/widgets/current_team.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CurrentMatchTeams extends StatelessWidget {
  const CurrentMatchTeams({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CurrentTeam(
          logo: AppAssets.elnasrLogo,
          name: 'نادي النصر السعودي',
        ),
        Text(
          tr('vs'),
          style: TextStyles.semiBold16.copyWith(color: AppColors.white),
        ),
        CurrentTeam(
          logo: AppAssets.elnasrLogo,
          name: 'نادي النصر السعودي',
        ),
      ],
    );
  }
}
