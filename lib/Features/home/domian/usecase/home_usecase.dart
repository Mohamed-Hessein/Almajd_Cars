import 'package:cars_e_commerce/Features/home/domian/repo/home_repo.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/cars_app_model.dart';
import '../../data/models/cars_price_model.dart';
import '../../data/models/details_cras_model.dart';
import '../../data/models/fliterd_slider.dart';
@injectable
class HomeUsecase {

   HomeRepo homeRepo;
   HomeUsecase(this.homeRepo);
   Future<CarsPrice> getCarsprices()async{
     try{
       return await homeRepo.getCarsprices();
     }catch(e){
       rethrow;
     }
   }
   Future<carapp> getCarsSpec(CarFilters filters)async{
     try{
       return await homeRepo.getCarsSpec(filters);
     }catch(e){
       rethrow;
     }
   }
}