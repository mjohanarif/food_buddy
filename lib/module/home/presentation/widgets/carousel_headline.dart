import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:food_buddy/shared/shared.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselHeadline extends StatefulWidget {
  final List<String> images;

  const CarouselHeadline({
    super.key,
    required this.images,
  });

  @override
  State<CarouselHeadline> createState() => _CarouselHeadlineState();
}

class _CarouselHeadlineState extends State<CarouselHeadline> {
  int _current = 0;
  final CarouselSliderController _controller = CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: widget.images
              .map(
                (e) => Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AppAssets.banner),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
              .toList(),
          carouselController: _controller,
          options: CarouselOptions(
            autoPlay: true,
            height: 126.h,
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              _current = index;
              setState(() {});
            },
          ),
        ),
        Positioned(
          bottom: 10.72.h,
          right: 10.72.w,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 8.72.w,
              vertical: 7.15.h,
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: widget.images.asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry.key),
                  child: Container(
                    width: 10.72.w,
                    height: 3.57.h,
                    margin: EdgeInsets.symmetric(horizontal: 2.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.93),
                      color: _current == entry.key
                          ? AppColors.primary
                          : AppColors.grey3,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
