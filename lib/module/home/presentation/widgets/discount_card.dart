import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_buddy/shared/shared.dart';

class DiscountCard extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String distance;

  const DiscountCard({
    super.key,
    required this.imageAsset,
    required this.title,
    required this.distance,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imageAsset,
            height: 96.47.h,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          const AppSpacing(v: 10),
          Text(
            title,
            style: const TextStyle(
              color: AppColors.text1,
              fontWeight: FontWeight.w600,
              fontSize: 12.51,
            ),
          ),
          const AppSpacing(v: 4),
          Row(
            children: [
              Text(
                distance,
                style: const TextStyle(
                  color: AppColors.text4,
                  fontSize: 10.72,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 7.15.w),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.grey2,
                ),
                height: 3.57.h,
                width: 3.57.w,
              ),
              Image.asset(
                AppAssets.star,
                width: 14.29.w,
              ),
              const AppSpacing(h: 4),
              const Text(
                '4.8 reviews',
                style: TextStyle(
                  color: AppColors.text4,
                  fontSize: 10.72,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
