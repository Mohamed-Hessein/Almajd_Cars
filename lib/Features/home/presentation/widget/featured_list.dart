import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars_e_commerce/core/resources/auto_router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as flutter;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_app.dart';
import '../../../../core/resources/images_icons.dart';
import '../../../../core/resources/styles.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_event.dart';
import '../bloc/home_state.dart';
import 'features_shimmer.dart';

class FeaturedList extends StatelessWidget {
  final List<String>? imageUrl;
  final dynamic vin;
  FeaturedList({super.key, this.imageUrl, this.vin});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeCarsState>(
      builder: (BuildContext context, state) {
        if (state.getCarsSpecStatus == CarsRequestStatus.error) {
          return Center(child: flutter.Text(state.errorMessage.toString()));
        }

        final spece = state.carsSpec?.data ?? [];
        final seenMakes = <String>{};
        final distinctCars = spece.where((car) => seenMakes.add(car.make ?? '')).toList();

        distinctCars.shuffle();
        final filterdList = distinctCars;

        if (state.getCarsSpecStatus == CarsRequestStatus.loading) {
          return FeaturedShimmer();
        }

        return SizedBox(
          height: 230.h,
          child: ListView.separated(
            scrollDirection: flutter.Axis.horizontal,
            itemCount: filterdList.length,
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemBuilder: (context, index) {
              final car = filterdList[index];

              List<String> carImages = [
                car.imageUrl,
                "https://loremflickr.com/800/600/car,${car.make},interior?random=${car.id}1",
                "https://loremflickr.com/800/600/car,wheel?random=${car.id}2",
              ];

              final isSelected = state.selectedCars.contains(car);

              return GestureDetector(
                onTap: () {
                  context.pushRoute(CarsDetails(imageUrl: carImages, car: car));
                },
                child: Stack(
                  children: [
                    Container(
                      width: 290.w,
                      height: 230.h,
                      decoration: flutter.BoxDecoration(
                        borderRadius: flutter.BorderRadius.circular(25.r),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(25.r),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: '${car.imageUrl}',
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              FeaturedShimmer(),
                          errorWidget: (context, url, error) => Image.asset(
                            ImageApp.carImage,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.h,
                      left: 10.w,
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                        decoration: flutter.BoxDecoration(
                          color: ColorsApp.lightgreen,
                          borderRadius: flutter.BorderRadius.circular(12.r),
                        ),
                        child: const Text(
                          'Verified',
                          style: flutter.TextStyle(color: flutter.Colors.white),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10.h,
                      right: 10.w,
                      child: GestureDetector(
                        onTap: () {
                          context.read<HomeBloc>().add(ToggleSelectionEvent(car));

                           WidgetsBinding.instance.addPostFrameCallback((_) {
                            final currentSelected = context.read<HomeBloc>().state.selectedCars ?? [];

                            if (currentSelected.length == 2) {
                              context.pushRoute(CarComparisonRoute(
                                car1: currentSelected[0],
                                car2: currentSelected[1],
                              ));
                            }
                          });
                           },
                        child: flutter.CircleAvatar(
                          radius: 18.r,
                          backgroundColor: flutter.Colors.white.withOpacity(0.9),
                          child:Icon(
                            (state.selectedCars ?? []).contains(car)
                                ? flutter.Icons.check_circle
                                : flutter.Icons.add_chart,
                            color: (state.selectedCars ?? []).contains(car)
                                ? flutter.Colors.green
                                : flutter.Colors.grey,
                            size: 22.r,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 15.h,
                      left: 15.w,
                      child: Column(
                        crossAxisAlignment: flutter.CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${car.make} ${car.model} ${car.year}',
                            style: StyleApp.text18white,
                          ),
                          Text(
                            '${car.msrp ?? 0} SAR',
                            style: StyleApp.text18Lightgreen,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}