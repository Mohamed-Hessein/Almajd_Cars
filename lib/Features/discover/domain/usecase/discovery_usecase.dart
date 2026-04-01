import 'package:cars_e_commerce/Features/discover/data/model/search_model.dart';
import 'package:cars_e_commerce/Features/discover/domain/repo/discover_repo.dart';
import 'package:injectable/injectable.dart';
@injectable
class DiscoveryUsecase {
  DiscoverRepo discoverRepo;
  DiscoveryUsecase(this.discoverRepo);
  Future<List<CarSearchModel>> call(var query)async{
    try{
      return await discoverRepo.SearchCars(query);

    }catch(e){

      rethrow;
    }
  }
 }