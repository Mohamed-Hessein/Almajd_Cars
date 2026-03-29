import 'dart:convert';

import 'package:cars_e_commerce/Features/home/data/data_source/remote/home_ds.dart';
import 'package:cars_e_commerce/Features/home/data/models/cars_price_model.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';
import 'package:cars_e_commerce/core/api/api_manager.dart';
import 'package:cars_e_commerce/core/api/constants_api_manager.dart';
import 'package:dio/src/response.dart';
import 'package:injectable/injectable.dart';

import '../../models/cars_app_model.dart';
import '../../models/fliterd_slider.dart';
@Injectable( as: HomeDs)
class HomeDsImpl  implements HomeDs{
  ApiManager apiManager;
  HomeDsImpl(this.apiManager);
  List<carapp> filterdList = [];
  @override
  @override
  Future<carapp> getCarsSpec(CarFilters? filters) async {
    try {
      Map<String, dynamic> params = {
        'limit': 100,
      };

      if (filters != null) {
        if (filters.fromYear != null) params['year'] = filters.fromYear;

      }

      var res = await apiManager.get(
        AppConstants.crasappBaseusrl,
        queryParameters: params,
      );

      var carData = carapp.fromJson(res.data is String ? jsonDecode(res.data) : res.data);

        if (filters != null && carData.data != null) {
        carData.data = carData.data!.where((car) {
          double price = (car.msrp ?? 0).toDouble();
          return price >= filters.minPrice! && price <= filters.maxPrice!;
        }).toList();
      }

      return carData;
    } catch (e) {
      rethrow;
    }
  }
  @override
  Future<CarsPrice> getCarsprices() async{
    try{
      var res = await apiManager.get(AppConstants.baseURlMarketvalue);

      CarsPrice carsPrices = CarsPrice.fromJson(res.data);
      return carsPrices;
    }catch(e){
      rethrow;
    }
  }
}