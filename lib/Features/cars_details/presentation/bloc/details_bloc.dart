import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import '../../domain/usecase/details_usecase.dart';
import 'details_event.dart';
import 'details_state.dart';

@injectable
class DetailsBloc extends Bloc<DetailsEvent, DetailsState> {
  final DetailsUsecase detailsUsecase;

  DetailsBloc(this.detailsUsecase) : super(DetailsState()) {
    on<getVinEvent>((event, emit) async {
      emit(state.copyWith(getCarsSpecStatus: CarsDetailsRequestStatus.loading));
      try {
        final carMap = {
          'make': event.vin.make?.toString().trim(),
          'model': event.vin.model?.toString().trim(),
          'year': event.vin.year?.toString().trim(),
        };

        final vinResult = await detailsUsecase.gteVin(carMap);

        print("API Response Found: ${vinResult.numFound}");

        emit(state.copyWith(
          getCarsSpecStatus: CarsDetailsRequestStatus.success,
          vInModel: vinResult,
        ));
      } catch (e) {
        emit(state.copyWith(
          getCarsSpecStatus: CarsDetailsRequestStatus.error,
          errorMessage: e.toString(),
        ));
      }
    });
  }
}