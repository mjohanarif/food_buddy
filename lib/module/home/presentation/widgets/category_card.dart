import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_buddy/shared/shared.dart';

class CategoryCard extends StatelessWidget {
  final String imageAsset;
  final String title;

  const CategoryCard({
    super.key,
    required this.imageAsset,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          imageAsset,
          height: 57.17.h,
        ),
        const AppSpacing(v: 7),
        Text(
          title,
          style: const TextStyle(
            fontSize: 12.51,
            fontWeight: FontWeight.w600,
            color: AppColors.text1,
          ),
        ),
      ],
    );
  }
}
