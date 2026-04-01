import 'package:cars_e_commerce/Features/discover/data/data_source/discovery_ds.dart';
import 'package:cars_e_commerce/Features/discover/data/model/search_model.dart';
import 'package:cars_e_commerce/core/api/api_manager.dart';
import 'package:cars_e_commerce/core/api/constants_api_manager.dart';
import 'package:cars_e_commerce/core/api/end_point.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: DiscoveryDs)
class DiscoveryDsImpl implements DiscoveryDs {
  ApiManager api;
  DiscoveryDsImpl(this.api);

  @override
  Future<List<CarSearchModel>> searchCars(var query) async {
    try {
      final String cleanQuery = query.trim().toLowerCase();

      Map<String, dynamic> params = {
        'api_key': EndPoint.apiKey.trim(),
        'rows': 50,
      };

      if (cleanQuery.isNotEmpty) {
        if (!cleanQuery.contains(' ')) {
          params['make'] = cleanQuery;
        } else {
          params['q'] = cleanQuery;
        }
      }

      var res = await api.get(
        AppConstants.Searchurl,
        queryParameters: params,
      );

      List<dynamic> data = res.data['listings'] ?? [];

      return data.map((e) => CarSearchModel.fromJson(e)).toList();
    } catch (e) {
      rethrow;
    }
  }
}