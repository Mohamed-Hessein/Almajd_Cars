import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_app.dart';

class CustomButtomnav extends StatelessWidget {
  CustomButtomnav({super.key, required this.price});
  var price;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.r),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 10, offset: const Offset(0, -2))],
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12.r),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade300),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: const Icon(Icons.chat_bubble_outline, color: ColorsApp.lightgreen),
          ),
          SizedBox(width: 16.w),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsApp.lightgreen,
                padding: EdgeInsets.symmetric(vertical: 16.h),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Book for SAR ${price}', style: TextStyle(color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold)),
                  SizedBox(width: 8.w),
                  Icon(Icons.arrow_forward, color: Colors.white, size: 18.sp),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
