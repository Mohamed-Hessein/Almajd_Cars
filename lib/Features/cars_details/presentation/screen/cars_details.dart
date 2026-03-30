import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/app_string.dart';
import '../../../../core/resources/colors_app.dart';
import '../../../../core/resources/images_icons.dart';
import '../../../../core/resources/styles.dart';
import '../../../../di.dart';
import '../bloc/details_bloc.dart';
import '../bloc/details_event.dart';
import '../bloc/details_state.dart';
import '../widgts/cars_image_slider.dart';
import '../widgts/cars_soec_grid.dart';
import '../widgts/custom_bottom_nav.dart';
import '../widgts/details_shimmer.dart';
import '../widgts/vehicle_features.dart';

@RoutePage()

class CarsDetails extends StatefulWidget {
  final List<String> imageUrl;
  final dynamic car;
  CarsDetails({super.key, required this.imageUrl, required this.car});

  @override
  State<CarsDetails> createState() => _CarsDetailsState();
}

class _CarsDetailsState extends State<CarsDetails> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DetailsBloc>()..add(getVinEvent(widget.car)),
      child: BlocBuilder<DetailsBloc, DetailsState>(
        builder: (BuildContext context, DetailsState state) {
          if (state.getCarsSpecStatus == CarsDetailsRequestStatus.error) {
            return Scaffold(
              body: Center(child: Text('Error: ${state.errorMessage}')),
            );
          }

          if (state.getCarsSpecStatus == CarsDetailsRequestStatus.loading) {
            return const DetailsShimmer();
          }

          final vinData = state.vInModel;
          final listing = (vinData?.listings != null && vinData!.listings!.isNotEmpty)
              ? vinData!.listings![0]
              : null;
          final buildData = listing?.build;

          return state.getCarsSpecStatus == CarsDetailsRequestStatus.success
              ? Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              actions: [
                ImageIcon(AssetImage(IconApp.shareIc), size: 16),
                SizedBox(width: 15.w)
              ],
              centerTitle: true,
              title: Text(AppString.carsDetails, style: StyleApp.text18BlueDark),
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 260.h,
                    width: 1.sw,
                    child: CarImageSlider(imageUrls: widget.imageUrl),
                  ),
                  SizedBox(height: 24.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5.r),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(16.r),
                                border: Border.all(color: ColorsApp.lightgreen, width: 1),
                              ),
                              child: Row(
                                children: [
                                  Image.asset(IconApp.owned, width: 18.w, height: 18.h),
                                  SizedBox(width: 8.w),
                                  Text('Certified Pre-Owned',
                                      style: StyleApp.text12BlueDark.copyWith(color: ColorsApp.lightgreen)),
                                ],
                              ),
                            ),
                            Image.asset(IconApp.fvaIC, width: 24.w, height: 24.h),
                          ],
                        ),
                        SizedBox(height: 16.h),
                        Text(
                            '${buildData?.year ?? ""} ${buildData?.make ?? ""} ${buildData?.model ?? ""}',
                            style: StyleApp.lgText.copyWith(fontSize: 24.sp, fontWeight: FontWeight.bold)),
                        SizedBox(height: 4.h),
                        Text('SAR ${listing?.price ?? listing?.msrp ?? "N/A"}',
                            style: StyleApp.lgText.copyWith(fontSize: 24.sp, color: ColorsApp.lightgreen)),
                        Text('VAT Inclusive', style: TextStyle(color: Colors.grey, fontSize: 12.sp)),
                        SizedBox(height: 20.h),
                        Text('Key Specifications', style: StyleApp.vlagTex.copyWith(fontSize: 16.sp)),
                        SizedBox(height: 16.h),
                        CarSpecsGrid(vinData: vinData),
                        SizedBox(height: 24.h),
                        Container(
                          padding: EdgeInsets.all(12.r),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.r),
                            border: Border.all(color: Colors.grey.shade200),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                  radius: 20.r,
                                  backgroundColor: Colors.grey.shade100,
                                  child: const Icon(Icons.store, color: Colors.grey)),
                              SizedBox(width: 12.w),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Al-Futtaim Motors',
                                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp)),
                                    Text('4.9 (124 Reviews)', style: TextStyle(color: Colors.grey, fontSize: 11.sp)),
                                  ],
                                ),
                              ),
                              Text('VIEW SHOP',
                                  style: TextStyle(
                                      color: ColorsApp.lightgreen, fontWeight: FontWeight.bold, fontSize: 12.sp)),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.h),
                        Text('Vehicle Features', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                        SizedBox(height: 12.h),
                        VehicleFeaturesWrap(build2: buildData),
                        SizedBox(height: 40.h),
                      ],
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: CustomButtomnav(price: listing?.price ?? listing?.msrp),
          )
              : const SizedBox();
        },
      ),
    );
  }
}