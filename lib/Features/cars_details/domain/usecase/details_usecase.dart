import 'package:cars_e_commerce/Features/cars_details/domain/repo/details_repo.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';
import 'package:injectable/injectable.dart';

import '../../data/model/vin_model.dart';
@injectable
class DetailsUsecase {

  DetailsRepo detailsRepo;
  DetailsUsecase(this.detailsRepo);
  Future<vinModel> gteVin(dynamic vin)async{
    return await detailsRepo.getVin(vin);
  }
  Future<CarsSpec> getdetials()async{
    return await detailsRepo.getdetails();
  }
}