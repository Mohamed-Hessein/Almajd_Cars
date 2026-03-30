import 'package:cars_e_commerce/Features/home/data/models/fliterd_slider.dart';

abstract class HomeEvent {}
class getPrices extends HomeEvent{}
class ToggleSelectionEvent extends HomeEvent{

  dynamic  car;
  ToggleSelectionEvent(this.car);

}
class getSpce extends HomeEvent{
  CarFilters filters;
  getSpce(this.filters);
}

class searchTextFeildFilterd extends HomeEvent{
  dynamic q;
  searchTextFeildFilterd(this.q);
}