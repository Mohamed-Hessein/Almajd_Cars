import 'package:injectable/injectable.dart';

import '../../../../core/api/api_manager.dart';
import '../../../../core/api/constants_api_manager.dart';
import '../../../../core/api/end_point.dart';
import '../../../home/data/models/details_cras_model.dart';
import '../model/vin_model.dart';
import 'details_ds.dart';

@Injectable(as: DetailsDs)
class DetailsDsImpl implements DetailsDs {
  ApiManager api;
  DetailsDsImpl(this.api);

  @override

  Future<vinModel> getVin(dynamic carData) async {
    try {
      final response = await api.get(
        "https://api.marketcheck.com/v2/search/car/active",
        queryParameters: {
          'api_key': EndPoint.apiKey,
          'year': carData['year'],
          'make': carData['make'],
          'model': carData['model'],
          'rows': 1,
        },
      );
      return vinModel.fromJson(response.data);
    } catch (e) {
      return vinModel(numFound: 0, listings: []);
    }
  }
  @override
  Future<CarsSpec> getdetails() async {
    try {
      var res = await api.get(AppConstants.baseURlSpecs);
      return CarsSpec.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }
}