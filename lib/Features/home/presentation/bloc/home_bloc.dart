import 'package:bloc/bloc.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';
import 'package:cars_e_commerce/Features/home/domian/usecase/home_usecase.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_event.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_state.dart';
import 'package:injectable/injectable.dart';

import '../../data/models/cars_app_model.dart';
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeCarsState> {
  HomeUsecase homeUsecase;
  HomeBloc(this.homeUsecase):super(HomeCarsState()){


    on<getSpce>((event, emit)async{
emit(state.copyWith(getCarsSpecStatus: CarsRequestStatus.loading));

try{

  carapp res =await homeUsecase.getCarsSpec(event.filters);
  emit(state.copyWith(getCarsSpecStatus: CarsRequestStatus.success,carsSpec: res ));
}catch(e){
  emit(state.copyWith(getCarsSpecStatus: CarsRequestStatus.error,errorMessage: e.toString()));
}

    });
    on<getPrices> ((event, emit)async{
      emit(state.copyWith(getCarsPriceStatus: CarsRequestStatus.loading));
      try{
        var res  = await homeUsecase.getCarsprices();
        emit(state.copyWith(getCarsPriceStatus: CarsRequestStatus.success, carsPrice: res));

      }catch(e){
        emit(state.copyWith(getCarsPriceStatus: CarsRequestStatus.error, errorMessage: e.toString()));


      }
    });

  }
}