import '../../models/cars_app_model.dart';
import '../../models/cars_price_model.dart';
import '../../models/details_cras_model.dart';
import '../../models/fliterd_slider.dart';

abstract class HomeDs {
  Future<CarsPrice> getCarsprices();
  Future<carapp> getCarsSpec(CarFilters filters);
}