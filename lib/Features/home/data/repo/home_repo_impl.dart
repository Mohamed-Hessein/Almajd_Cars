import 'package:cars_e_commerce/Features/home/data/data_source/remote/home_ds.dart';
import 'package:cars_e_commerce/Features/home/data/models/cars_price_model.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';
import 'package:cars_e_commerce/Features/home/domian/repo/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../models/cars_app_model.dart';
import '../models/fliterd_slider.dart';
@Injectable(as :HomeRepo)
class HomeRepoImpl  implements HomeRepo{
  HomeDs homeDs;
  HomeRepoImpl(this.homeDs);
  @override
  Future<carapp> getCarsSpec(CarFilters filters)async {
 try{
   return await homeDs.getCarsSpec(filters);
 }catch(e){
   rethrow;
 }
  }

  @override
  Future<CarsPrice> getCarsprices()async {
    try{
      return await homeDs.getCarsprices();
    }catch(e){
      rethrow;
    }
  }
}