import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_buddy/shared/shared.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        fontSize: 10.7,
      ),
      decoration: InputDecoration(
        prefixIconConstraints: BoxConstraints(maxHeight: 16.h),
        suffixIconConstraints: BoxConstraints(maxHeight: 13.h),
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 14.w, right: 7.w),
          child: Image.asset(
            AppAssets.search,
            width: 16.w,
          ),
        ),
        suffixIcon: Padding(
          padding: EdgeInsets.only(right: 14.w, left: 7.w),
          child: Image.asset(
            AppAssets.filter,
            width: 13.w,
          ),
        ),
        contentPadding: const EdgeInsets.only(left: 0),
        constraints: BoxConstraints(maxHeight: 37.h),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.grey2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.grey2,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: 'Search menu, restaurant or etc',
        hintStyle: const TextStyle(
          fontSize: 10.7,
          color: AppColors.text4,
        ),
      ),
    );
  }
}
