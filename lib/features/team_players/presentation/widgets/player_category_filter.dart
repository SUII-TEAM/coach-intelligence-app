import 'package:ai_tactical_assistant/core/constants/app_colors.dart';
import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlayerCategoryFilter extends StatelessWidget {
  final String label;
  final bool isSelected;

  const PlayerCategoryFilter({
    super.key,
    required this.label,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.sp),
        child: Text(
          label,
          style: TextStyles.regular14.copyWith(
            color: isSelected ? AppColors.white : AppColors.grey,
          ),
        ),
      ),
      backgroundColor: isSelected ? AppColors.primary : AppColors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
    );
  }
}
