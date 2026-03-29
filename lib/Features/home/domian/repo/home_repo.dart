import 'package:cars_e_commerce/Features/home/data/models/cars_price_model.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';

import '../../data/models/cars_app_model.dart';
import '../../data/models/fliterd_slider.dart';

abstract class HomeRepo {
  Future<CarsPrice> getCarsprices();
  Future<carapp> getCarsSpec(CarFilters filters);
}