import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../../core/resources/images_icons.dart';
import '../../../../core/resources/colors_app.dart';

class CarImageSlider extends StatefulWidget {
  final List<String> imageUrls;
  const CarImageSlider({super.key, required this.imageUrls});

  @override
  State<CarImageSlider> createState() => _CarImageSliderState();
}

class _CarImageSliderState extends State<CarImageSlider> {
  final PageController controller = PageController();
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      width: 1.sw,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            onPageChanged: (value) => setState(() => currentIndex = value + 1),
            controller: controller,
            itemCount: widget.imageUrls.length,
            itemBuilder: (context, index) => CachedNetworkImage(
              imageUrl: widget.imageUrls[index],
              fit: BoxFit.cover,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Image.asset(ImageApp.carImage, fit: BoxFit.cover),
            ),
          ),
          Positioned(
            top: 10.h,
            right: 10.w,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 4.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: Colors.white.withOpacity(0.9),
              ),
              child: Text('$currentIndex / ${widget.imageUrls.length}'),
            ),
          ),
          Positioned(
            bottom: 20.h,
            child: SmoothPageIndicator(
              controller: controller,
              count: widget.imageUrls.length,
              effect: const ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                expansionFactor: 5,
                activeDotColor: ColorsApp.lightgreen,
              ),
            ),
          ),
        ],
      ),
    );
  }
}