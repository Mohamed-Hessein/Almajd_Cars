import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars_e_commerce/Features/home/data/models/cars_price_model.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_bloc.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_event.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_state.dart';
import 'package:cars_e_commerce/Features/home/presentation/widget/populr_list.dart';
import 'package:cars_e_commerce/core/resources/app_string.dart';
import 'package:cars_e_commerce/core/resources/colors_app.dart';
import 'package:cars_e_commerce/core/resources/styles.dart';
import 'package:cars_e_commerce/di.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' as flutter;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/resources/images_icons.dart';
import '../../data/models/cars_app_model.dart';
import '../../data/models/fliterd_slider.dart';
import '../../data/models/populr_list_modle.dart';
import '../widget/featured_list.dart';
import '../widget/filterf_bottom_shet.dart';
import '../widget/latest_section.dart';

@RoutePage()
class HomeScreeen extends StatelessWidget {
  HomeScreeen({super.key});
List<Data>filterdList = [];

  @override
  Widget build(BuildContext context) {
    final heith = MediaQuery.of(context).size.height;
    return BlocProvider(
      create: (context) => getIt<HomeBloc>()..add(
        getSpce(CarFilters(
            fromYear: 2020,
            minPrice: 0,
            maxPrice: 500000,
            toYear: 2026,
            transmission: 'Automatic'
        )),
      ),
      child: BlocBuilder<HomeBloc, HomeCarsState>(
        builder: (context, state){

          return   flutter.Scaffold(
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [

                    flutter.TextField(
                        onChanged: (vlaue){

                        },
                      decoration: flutter.InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Image.asset(IconApp.searchIc, width: 6, height: 6,),
                        ),
                        suffixIcon: Container(
                          width: 30,
                          height: 30,
                          decoration: flutter.BoxDecoration(
                            shape: flutter.BoxShape.circle,
                            color: ColorsApp.lightgreen,
                            boxShadow: [
                              flutter.BoxShadow(
                                color: ColorsApp.lightgreen.withOpacity(0.7),
                                blurRadius: 8,
                                spreadRadius: 3,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(11.0),
                            child: GestureDetector(
                              onTap: () {
                                final homeBloc = context.read<HomeBloc>();

                                flutter.showModalBottomSheet(
                                  context: context,
                                  isScrollControlled: true,
                                  backgroundColor: flutter.Colors.white,
                                  shape: const flutter.RoundedRectangleBorder(
                                    borderRadius: flutter.BorderRadius.vertical(top: flutter.Radius.circular(25)),
                                  ),
                                  builder: (context) {
                                    return StatefulBuilder(
                                      builder: (BuildContext context, StateSetter setModalState) {


                                        return FilterBottomShet(homeBloc: homeBloc,);
                                      },
                                    );
                                  },
                                );
                              },
                              child: Image.asset(
                                IconApp.filterdIc,
                                width: 8,
                                height: 8,
                              ),
                            ),
                          ),
                        ),
                        hintStyle: flutter.TextStyle(fontSize: 14, color: ColorsApp.secondaryGrey),
                        hintText: AppString.search,
                        focusedBorder: flutter.OutlineInputBorder(borderSide: flutter.BorderSide.none),
                        errorBorder: flutter.OutlineInputBorder(borderSide: flutter.BorderSide.none),
                        border: flutter.OutlineInputBorder(borderSide: flutter.BorderSide.none),
                        enabledBorder: flutter.OutlineInputBorder(borderSide: flutter.BorderSide.none),
                      ),
                    ),

                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: flutter.MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppString.popular, style: StyleApp.text24Black.copyWith(color: flutter.Colors.black),),
                        Text(AppString.viewAll, style: StyleApp.text12BlueDark.copyWith(color: ColorsApp.lightgreen),)
                      ],
                    ),

                    SizedBox(height: 15,),
                    PopulrList(),

                    SizedBox(height: 15.h,),
                    Row(
                      mainAxisAlignment: flutter.MainAxisAlignment.spaceBetween,
                      children: [
                        Text(AppString.featured, style: StyleApp.text24Black.copyWith(color: flutter.Colors.black),),
                      ],
                    ),
                    SizedBox(height: 16.h,),
                    FeaturedList(),
                    LatestScetion(),
                  ],
                ),
              ),
            ),
            appBar: flutter.AppBar(
              actions: [
                Image.asset(IconApp.notiIc, width: 24, height: 24,),
                SizedBox(width: 10.w,),
                Image.asset(ImageApp.profileIc, width: 35, height: 35),
                SizedBox(width: 15.w,)
              ],
              backgroundColor: flutter.Colors.transparent,
              title: Column(
                children: [
                  Text('Automarket', style: StyleApp.text18BlueDark,),
                  Text('Saudi Arabia', style: StyleApp.smtext,),
                ],
              ),
              leading: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Image.asset(IconApp.overAppbarlay, width: 12, height: 12,),
              ),
            ),
          );
        },

      ),
    );
  }
}

