import 'package:cars_e_commerce/Features/discover/data/data_source/discovery_ds.dart';
import 'package:cars_e_commerce/Features/discover/data/model/search_model.dart';
import 'package:cars_e_commerce/Features/discover/domain/repo/discover_repo.dart';
import 'package:injectable/injectable.dart';
@Injectable(as:DiscoverRepo )
class DiscoveryRepoImpl  implements DiscoverRepo{
  DiscoveryDs discoveryDs;
  DiscoveryRepoImpl(this.discoveryDs);
  @override
  Future<List<CarSearchModel>>  SearchCars(query)async {
try{
  return await discoveryDs.searchCars(query);
}catch(e){
  rethrow;
}
  }
}