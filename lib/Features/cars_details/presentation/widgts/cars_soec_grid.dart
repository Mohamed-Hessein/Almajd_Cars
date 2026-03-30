import 'package:cars_e_commerce/Features/cars_details/data/model/vin_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_app.dart';
import '../../../../core/resources/images_icons.dart';
import '../../../../core/resources/styles.dart';

class CarSpecsGrid extends StatelessWidget {
  final vinModel? vinData;
  const CarSpecsGrid({super.key, required this.vinData});

  @override
  Widget build(BuildContext context) {
    final build = (vinData?.listings != null && vinData!.listings!.isNotEmpty)
        ? vinData!.listings![0].build
        : null;

    final List<String> titles = ['Engine', 'Transmission', 'Year', 'Seating'];
    final List<String> icons = [IconApp.engeine, IconApp.autom, IconApp.time, IconApp.meialge];
    final List<String> values = [
      build?.engine ?? (build?.engineSize != null ? "${build?.engineSize}L ${build?.cylinders ?? ""}CYL" : "N/A"),

      build?.transmission ?? "Automatic",


      "${build?.year ?? "N/A"} Model",


      "${build?.stdSeating ?? "5"} Seats",
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.6,
        crossAxisSpacing: 10.w,
        mainAxisSpacing: 10.h,
      ),
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(10.r),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(12.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(icons[index], width: 24.w),
            const Spacer(),
            Text(titles[index], style: StyleApp.smtext.copyWith(color: ColorsApp.secondaryGrey, fontSize: 11.sp)),
            Text(values[index],
                style: TextStyle(fontSize: 11.sp, fontWeight: FontWeight.bold),
                maxLines: 1,
                overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}