import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final Function() onTap;
  const SectionHeader({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: TextStyles.bold14),
        Spacer(),
        GestureDetector(
          onTap: onTap,
          child: Text(
            tr('see_all'),
            style: TextStyles.regular14.copyWith(color: AppColors.secondary),
          ),
        ),
      ],
    );
  }
}
