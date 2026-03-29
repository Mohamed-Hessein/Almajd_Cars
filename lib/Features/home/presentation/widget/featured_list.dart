import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as flutter;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_app.dart';
import '../../../../core/resources/images_icons.dart';
import '../../../../core/resources/styles.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return                 BlocBuilder<HomeBloc, HomeCarsState>(
      builder: (BuildContext context, state) {
        if (state.getCarsSpecStatus == CarsRequestStatus.loading) {
          return Center(child: flutter.CircularProgressIndicator());
        } else if (state.getCarsSpecStatus == CarsRequestStatus.error) {
          return Center(child: flutter.Text(state.errorMessage.toString()));
        }
        final spece = state.carsSpec?.data ?? [];


        final seenMakes = <String>{};
        final distinctCars = spece.where((car) => seenMakes.add(car.make ?? '')).toList();


        distinctCars.shuffle();

        final filterdList = distinctCars;

        if (filterdList.isEmpty) {
          return Center(child: Text("No Data"));
        }

        return SizedBox(
          height: 200.h,
          child: ListView.separated(
            scrollDirection: flutter.Axis.horizontal,
            itemCount: filterdList.length,
            separatorBuilder: (context, index) => SizedBox(width: 16.w),
            itemBuilder: (context, index) {
              final car = filterdList[index];

              String carImageUrl = "https://loremflickr.com/800/600/car,${car.make},${car.model}?random=$index";   print(state.carsSpec?.data?.first.make);
              return Stack(
                children: [
                  Container(

                    width: 290,
                    height: 230,
                    decoration: flutter.BoxDecoration(
                      borderRadius: flutter.BorderRadius.circular(25),


                    ),
                    child:  ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: CachedNetworkImage(
                        fit: BoxFit.cover,
                          imageUrl: '${car.imageUrl}'
                          ,
                          progressIndicatorBuilder: (context, url, downloadProgress) =>
                              Center(child: flutter.CircularProgressIndicator(value: downloadProgress.progress)),
                          errorWidget: (context, url, error) => Image.asset(ImageApp.carImage,fit: BoxFit.cover,)
                      ),
                    ),
                  ),

                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: EdgeInsets.all(6),
                      decoration: flutter.BoxDecoration(
                        color: ColorsApp.lightgreen,
                        borderRadius: flutter.BorderRadius.circular(12),
                      ),
                      child: Text(
                        'Verified',
                        style: flutter.TextStyle(color: flutter.Colors.white),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 10,
                    left: 10,
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
              );
            },
          ),
        );
      },
    );

  }
}
