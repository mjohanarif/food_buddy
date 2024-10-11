import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_buddy/module/home/presentation/widgets/widgets.dart';
import 'package:food_buddy/shared/shared.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.secondary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(7.15.sp),
                  child: Image.asset(
                    AppAssets.pin,
                    width: 16.w,
                  ),
                ),
                const AppSpacing(h: 9),
                const Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Current location',
                            style: TextStyle(
                              color: AppColors.text2,
                              fontSize: 10.7,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down)
                        ],
                      ),
                      Text(
                        'Jl. Soekarno Hatta 15A Malang',
                        style: TextStyle(
                          color: AppColors.text3,
                          fontSize: 12.51,
                          fontWeight: FontWeight.w600,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(7.15.sp),
                  child: Image.asset(
                    AppAssets.notification,
                    width: 16.w,
                  ),
                ),
              ],
            ),
            const AppSpacing(v: 21),
            const SearchSection(),
            const AppSpacing(v: 17),
            const CarouselHeadline(
              images: [
                AppAssets.banner,
                AppAssets.banner,
                AppAssets.banner,
              ],
            ),
            const AppSpacing(v: 30),
            const Column(
              children: [
                Row(
                  children: [
                    Text(
                      'Top Categories',
                      style: TextStyle(
                        fontSize: 14.29,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text1,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 10.72,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text5,
                      ),
                    ),
                  ],
                ),
                AppSpacing(v: 14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryCard(
                      imageAsset: AppAssets.beverage,
                      title: 'Beverages',
                    ),
                    CategoryCard(
                      imageAsset: AppAssets.snack,
                      title: 'Snack',
                    ),
                    CategoryCard(
                      imageAsset: AppAssets.seafood,
                      title: 'Seafood',
                    ),
                    CategoryCard(
                      imageAsset: AppAssets.dessert,
                      title: 'Dessert',
                    ),
                  ],
                ),
                AppSpacing(
                  v: 21,
                ),
                Row(
                  children: [
                    Text(
                      'Top Discount',
                      style: TextStyle(
                        fontSize: 14.29,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text1,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See all',
                      style: TextStyle(
                        fontSize: 10.72,
                        fontWeight: FontWeight.w600,
                        color: AppColors.text5,
                      ),
                    ),
                  ],
                ),
                AppSpacing(v: 15),
                Row(
                  children: [
                    DiscountCard(
                        imageAsset: AppAssets.starbuck,
                        title: 'Starbuck Borobudur',
                        distance: '1.0'),
                    AppSpacing(h: 17),
                    DiscountCard(
                      imageAsset: AppAssets.baegopa,
                      title: 'Baegopa Suhat',
                      distance: '500',
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomNavigation(),
    );
  }
}
