import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_bloc.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/colors_app.dart';
import '../../../../core/resources/images_icons.dart';
import '../../../../core/resources/styles.dart';

class LatestScetion extends StatefulWidget {
  LatestScetion({super.key});

  @override
  State<LatestScetion> createState() => _LatestScetionState();
}

class _LatestScetionState extends State<LatestScetion> {
  bool isListed = false;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeCarsState>(
      builder:(context, state){
        if (state.getCarsSpecStatus == CarsRequestStatus.loading) {
          return Center(child:CircularProgressIndicator());
        } else if (state.getCarsSpecStatus == CarsRequestStatus.error) {
          return Center(child:Text(state.errorMessage.toString()));
        }

        final spece = state.carsSpec?.data ?? [];


        spece.shuffle();

        final seenMakes = <String>{};
        final filterdList = spece;
        if (filterdList.isEmpty) {
          return Center(child: Text("No Data"));
        }
else {
      return  Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Latest Listings', style: StyleApp.text24Black.copyWith(color: Colors.black)),
                GestureDetector(
                  onTap: () {
                    isListed = false;
                    setState(() {});
                  },
                  child: ImageIcon(
                    AssetImage(IconApp.gridIc),
                    color: isListed ? ColorsApp.secondaryGrey : ColorsApp.lightgreen,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    isListed = !isListed;
                    setState(() {});
                  },
                  child: ImageIcon(
                    AssetImage(IconApp.listIc),
                    color: isListed ? ColorsApp.lightgreen : ColorsApp.secondaryGrey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            SizedBox(height: 16.h),

            isListed
                ? Column(
              children: List.generate(
        filterdList.length,
                    (index) {
                      final car = filterdList[index];
                      String carImageUrl = "https://loremflickr.com/800/600/car,${car.make},${car.model}?random=$index";   print(state.carsSpec?.data?.first.make);


                      return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.08),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        SizedBox(
                          height: 180,
                          width: 220.w,
                          child: ClipRRect(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                            child:CachedNetworkImage(

                              fit: BoxFit.cover,
                                imageUrl: '${car.imageUrl}'
                                ,
                                progressIndicatorBuilder: (context, url, downloadProgress) =>
                                    Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
                                errorWidget: (context, url, error) => Image.asset(ImageApp.carImage)
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text(
                              maxLines: 1,
                                '${car.make} ${car.model} ${car.submodel ?? ''}',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis
                              ),
                              SizedBox(height: 4),
                              Text(
                                '${car.year} ',
                                style: TextStyle(
                                  fontSize: 11,
                                  color: Colors.grey,
                                ),
                              ),
                              SizedBox(height: 8),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${car.msrp} SAR',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.teal,
                                    ),
                                  ),
                                  Icon(
                                    Icons.favorite_border,
                                    size: 18,
                                    color: Colors.grey,
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );}
              ),
            )
                : SizedBox(
              height: 250,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: isListed ? Axis.vertical : Axis.horizontal,
        itemBuilder: (context, index) {
        final car = filterdList[index];
        String carImageUrl = "https://loremflickr.com/800/600/car,${car.make},${car.model}?random=$index";   print(state.carsSpec?.data?.first.make);

        return Container(
        width: 220,
        height: 180,
        decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
        BoxShadow(
        color: Colors.black.withOpacity(0.08),
        blurRadius: 10,
        offset: Offset(0, 4),
        ),
        ],
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        SizedBox(
          height: 100.h,
          width: 220.w,
          child: ClipRRect(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
          child: CachedNetworkImage(
              fit: BoxFit.cover,
              imageUrl: '${car.imageUrl}'
              ,
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(child: CircularProgressIndicator(value: downloadProgress.progress)),
              errorWidget: (context, url, error) => Image.asset(ImageApp.carImage,fit: BoxFit.cover,)
          ),
          ),
        ),
        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            maxLines: 1,
              '${car.make} ${car.model} ${car.submodel ?? ''}',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              ) ,
        SizedBox(height: 4),
        Text(
        '${car.year} • 0 km',
        style: TextStyle(
        fontSize: 11,
        color: Colors.grey,
        ),
        ),
        SizedBox(height: 8),
        Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Text(
        '${car.msrp ?? 0} SAR',
        style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Colors.teal,
        ),
        ),
        Icon(
        Icons.favorite_border,
        size: 18,
        color: Colors.grey,
        )
        ],
        )
        ],
        ),
        )
        ],
        ),
        );
        },
                separatorBuilder: (context, index) => SizedBox(width: 15.w),
                itemCount: filterdList.length,
              ),
            ),
          ],
        );}
      } ,

    );
  }
}