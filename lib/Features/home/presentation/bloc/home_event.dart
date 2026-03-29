import 'package:cars_e_commerce/Features/home/data/models/fliterd_slider.dart';

abstract class HomeEvent {}
class getPrices extends HomeEvent{}
class getSpce extends HomeEvent{
  CarFilters filters;
  getSpce(this.filters);
}
