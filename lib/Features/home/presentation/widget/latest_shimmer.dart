import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

class LatestListingsShimmer extends StatelessWidget {
  final bool isListed;
  const LatestListingsShimmer({super.key, required this.isListed});

  @override
  Widget build(BuildContext context) {
    return isListed
        ? Column(
      children: List.generate(3, (index) => _buildShimmerItem(double.infinity, 250.h)),
    )
        : SizedBox(
      height: 250.h,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (context, index) => SizedBox(width: 15.w),
        itemBuilder: (context, index) => _buildShimmerItem(220.w, 250.h),
      ),
    );
  }

  Widget _buildShimmerItem(double width, double height) {
    return Shimmer.fromColors(
      baseColor: Colors.grey[300]!,
      highlightColor: Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
        ),
      ),
    );
  }
}