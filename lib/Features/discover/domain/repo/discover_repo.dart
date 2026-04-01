import '../../data/model/search_model.dart';

abstract class DiscoverRepo {
  Future<List<CarSearchModel>> SearchCars(dynamic query);
}