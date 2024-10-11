import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_buddy/shared/shared.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: [
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                AppAssets.home,
                width: 16.08.w,
                color: AppColors.text4,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Home',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text4,
                ),
              )
            ],
          ),
          activeIcon: Column(
            children: [
              Image.asset(
                AppAssets.home,
                width: 16.08.w,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Home',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              )
            ],
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                AppAssets.order,
                width: 16.08.w,
                color: AppColors.text4,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Orders',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text4,
                ),
              )
            ],
          ),
          activeIcon: Column(
            children: [
              Image.asset(
                AppAssets.order,
                width: 16.08.w,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Orders',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              )
            ],
          ),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                AppAssets.bookmark,
                width: 16.08.w,
                color: AppColors.text4,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Bookmark',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text4,
                ),
              )
            ],
          ),
          activeIcon: Column(
            children: [
              Image.asset(
                AppAssets.bookmark,
                width: 16.08.w,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Bookmark',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              )
            ],
          ),
          label: 'Bookmark',
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              Image.asset(
                AppAssets.profile,
                width: 16.08.w,
                color: AppColors.text4,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.text4,
                ),
              )
            ],
          ),
          activeIcon: Column(
            children: [
              Image.asset(
                AppAssets.profile,
                width: 16.08.w,
              ),
              const AppSpacing(v: 3),
              const Text(
                'Profile',
                style: TextStyle(
                  fontSize: 10.72,
                  fontWeight: FontWeight.w600,
                  color: AppColors.primary,
                ),
              )
            ],
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
