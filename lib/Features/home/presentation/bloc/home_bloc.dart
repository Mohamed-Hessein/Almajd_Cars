import 'package:bloc/bloc.dart';
import 'package:cars_e_commerce/Features/home/data/models/details_cras_model.dart';
import 'package:cars_e_commerce/Features/home/domian/usecase/home_usecase.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_event.dart';
import 'package:cars_e_commerce/Features/home/presentation/bloc/home_state.dart';
import 'package:injectable/injectable.dart';

import '../../../cars_details/data/model/vin_model.dart';
import '../../data/models/cars_app_model.dart';
@injectable
class HomeBloc extends Bloc<HomeEvent, HomeCarsState> {
  HomeUsecase homeUsecase;
  late var currentSelection = [];
  var filterdList= [];
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
    on<ToggleSelectionEvent>((event, emit) {
      final List<dynamic> updatedList = List.from(state.selectedCars ?? []);

      if (updatedList.contains(event.car)) {
        updatedList.remove(event.car);
      } else {
        if (updatedList.length < 2) {
          updatedList.add(event.car);
        } else {
          updatedList.removeAt(0);
          updatedList.add(event.car);
        }
      }
      emit(state.copyWith(selectedCars: updatedList));
    });
  on<searchTextFeildFilterd>((event, emit){
    final allCars = state.carsSpec?.data;

allCars?.where((cars){

  final modle = (cars.model)??'';
  final make = (cars.make)??'';
  final year = (cars.year)??'';
  final price = (cars.msrp)??'';
  return modle.contains(event.q) || year.toString().contains(event.q) || price.toString().contains(event.q) ||make.toString().contains(event.q);
}).toList();

  });
 }





}