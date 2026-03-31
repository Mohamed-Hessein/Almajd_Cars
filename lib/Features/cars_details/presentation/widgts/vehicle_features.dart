import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../data/model/vin_model.dart';
class VehicleFeaturesWrap extends StatelessWidget {
  final Build? build2;
  const VehicleFeaturesWrap({super.key, required this.build2});

  @override
  Widget build(BuildContext context) {
    List<String> features = [
      if (build2?.fuelType != null) "Fuel: ${build2!.fuelType}",
      if (build2?.drivetrain != null) build2!.drivetrain!,
      if (build2?.bodyType != null) build2!.bodyType!,
      if (build2?.vehicleType != null) build2!.vehicleType!,
      if (build2?.engineSize != null) "Engine: ${build2!.engineSize}L",
      "Standard Safety",
      "Power Windows"
    ];

    return Wrap(
      spacing: 8.w,
      runSpacing: 8.h,
      children: features.map((f) => Container(
        padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Text(f, style: TextStyle(fontSize: 11.sp, color: Colors.black87)),
      )).toList(),
    );
  }
}