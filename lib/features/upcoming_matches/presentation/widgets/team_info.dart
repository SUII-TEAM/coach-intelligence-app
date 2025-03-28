import 'package:ai_tactical_assistant/core/constants/app_text_styles.dart';
import 'package:ai_tactical_assistant/core/widgets/app_spacer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamInfo extends StatelessWidget {
  final String name;
  final String logoUrl;
  final bool isLeft;

  const TeamInfo({
    super.key,
    required this.name,
    required this.logoUrl,
    required this.isLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!isLeft) ...[
          SizedBox(
            width: 60.sp,
            child: Text(
              name,
              textAlign: TextAlign.start,
              style: TextStyles.semiBold12,
            ),
          ),
          AppSpacer(widthRatio: 0.2),
          CachedNetworkImage(
            imageUrl: logoUrl,
            width: 50.sp,
          ),
        ] else ...[
          CachedNetworkImage(
            imageUrl: logoUrl,
            width: 50.sp,
          ),
          AppSpacer(widthRatio: 0.2),
          SizedBox(
            width: 60.sp,
            child: Text(
              name,
              textAlign: TextAlign.end,
              style: TextStyles.semiBold12,
            ),
          ),
        ],
      ],
    );
  }
}
