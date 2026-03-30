import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';

import '../../data/model/vin_model.dart';

abstract class DetailsRepo {
  Future<vinModel> getVin (dynamic vin);
  Future<CarsSpec> getdetails ();
}