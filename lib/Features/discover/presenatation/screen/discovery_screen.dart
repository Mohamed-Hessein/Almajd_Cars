import 'package:auto_route/annotations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cars_e_commerce/Features/discover/data/model/search_model.dart';
import 'package:cars_e_commerce/Features/discover/presenatation/bloc/saerch_state.dart';
import 'package:cars_e_commerce/Features/discover/presenatation/bloc/search_bloc.dart';
import 'package:cars_e_commerce/Features/discover/presenatation/bloc/search_event.dart';
import 'package:cars_e_commerce/core/resources/colors_app.dart';
import 'package:cars_e_commerce/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../core/resources/app_string.dart';
import '../../../../core/resources/images_icons.dart';
import '../widgets/custom_grid_view.dart';
import '../widgets/discovry_shimemr.dart';

@RoutePage()

class DiscoveryScreen extends StatelessWidget {
  DiscoveryScreen({super.key});
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SearchBloc>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: BlocBuilder<SearchBloc, SearchState>(
            builder: (BuildContext context, state) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextField(
                        controller: searchController,
                        onChanged: (value) {
                          context.read<SearchBloc>().add(getSearched(value));
                        },
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Image.asset(
                              IconApp.searchIc,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          hintStyle: TextStyle(
                              fontSize: 14, color: ColorsApp.secondaryGrey),
                          hintText: AppString.search,
                          filled: true,
                          fillColor: Colors.grey[100],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    if (state.searchStatus == SearchRequestStatus.loading)
                      const DiscoveryShimmer()
                    else if (state.searchStatus == SearchRequestStatus.error)
                      Center(child: Text(state.errorMessage.toString()))
                    else if (state.searchResults == null || state.searchResults!.isEmpty)
                        const Center(child: Text("Search to get cars"))
                      else
                        CarGridView(cars: state.searchResults!),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}