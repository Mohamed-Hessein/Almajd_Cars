 import '../../../home/data/models/details_cras_model.dart';
import '../model/vin_model.dart';

abstract class DetailsDs {

   Future<vinModel> getVin (dynamic vin);
   Future<CarsSpec> getdetails ();
}