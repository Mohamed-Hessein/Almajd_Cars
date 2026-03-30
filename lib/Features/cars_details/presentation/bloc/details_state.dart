
import 'package:cars_e_commerce/Features/cars_details/data/model/vin_model.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';

import '../../../home/data/models/cars_app_model.dart';
import '../../../home/data/models/cars_price_model.dart';

enum CarsDetailsRequestStatus {
  init,
  loading,
  success,
  error,
}

class DetailsState {
  CarsDetailsRequestStatus? getCarsPriceStatus;
  CarsDetailsRequestStatus? getCarsSpecStatus;

  CarsPrice? carsPrice;
  CarsSpec? carsSpec;
vinModel? vInModel;
  String? errorMessage;
  int? currentIndex;
  String? currentBackground;

  DetailsState({
    this.getCarsPriceStatus = CarsDetailsRequestStatus.init,
    this.getCarsSpecStatus = CarsDetailsRequestStatus.init,
    this.carsPrice,
    this.carsSpec,
    this.errorMessage,
    this.vInModel,
    this.currentIndex = 0,
    this.currentBackground,
  });

  DetailsState copyWith({
    vinModel? vInModel,
    CarsDetailsRequestStatus? getCarsPriceStatus,
    CarsDetailsRequestStatus? getCarsSpecStatus,
    CarsPrice? carsPrice,
    CarsSpec? carsSpec,
    String? errorMessage,
    int? currentIndex,
    String? currentBackground,
  }) {
    return DetailsState(vInModel: vInModel?? this.vInModel,
      getCarsPriceStatus: getCarsPriceStatus ?? this.getCarsPriceStatus,
      getCarsSpecStatus: getCarsSpecStatus ?? this.getCarsSpecStatus,
      carsPrice: carsPrice ?? this.carsPrice,
      carsSpec: carsSpec ?? this.carsSpec,
      errorMessage: errorMessage ?? this.errorMessage,
      currentIndex: currentIndex ?? this.currentIndex,
      currentBackground: currentBackground ?? this.currentBackground,
    );
  }
}