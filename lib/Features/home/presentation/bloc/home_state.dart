import '../../data/models/cars_app_model.dart';
import '../../data/models/cars_price_model.dart';
import '../../data/models/details_cras_model.dart';

enum CarsRequestStatus {
  init,
  loading,
  success,
  error,
}

class HomeCarsState {
  CarsRequestStatus? getCarsPriceStatus;
  CarsRequestStatus? getCarsSpecStatus;

  CarsPrice? carsPrice;
  carapp? carsSpec;

  String? errorMessage;
  int? currentIndex;
  String? currentBackground;

  HomeCarsState({
    this.getCarsPriceStatus = CarsRequestStatus.init,
    this.getCarsSpecStatus = CarsRequestStatus.init,
    this.carsPrice,
    this.carsSpec,
    this.errorMessage,
    this.currentIndex = 0,
    this.currentBackground,
  });

  HomeCarsState copyWith({
    CarsRequestStatus? getCarsPriceStatus,
    CarsRequestStatus? getCarsSpecStatus,
    CarsPrice? carsPrice,
    carapp? carsSpec,
    String? errorMessage,
    int? currentIndex,
    String? currentBackground,
  }) {
    return HomeCarsState(
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