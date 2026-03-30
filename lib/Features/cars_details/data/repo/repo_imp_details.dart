import 'package:cars_e_commerce/Features/cars_details/data/data_source/details_ds.dart';
import 'package:cars_e_commerce/Features/cars_details/domain/repo/details_repo.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';
import 'package:injectable/injectable.dart';

import '../model/vin_model.dart';
@Injectable(as:DetailsRepo)
class RepoImpDetails implements DetailsRepo {

  DetailsDs detailsDs;
  RepoImpDetails(this.detailsDs);

  Future<vinModel> getVin(vin)async {
    try{

      return await detailsDs.getVin(vin);
    }catch(e){rethrow;}
  }

  @override
  Future<CarsSpec> getdetails()async {
    try{

      return await detailsDs.getdetails();
    }catch(e){rethrow;}
  }
}