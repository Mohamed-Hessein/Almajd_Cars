import 'package:cars_e_commerce/Features/discover/data/model/search_model.dart';

abstract class DiscoveryDs {
  Future<List<CarSearchModel>>  searchCars(var query);
}