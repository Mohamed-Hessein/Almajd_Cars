import 'package:bloc/bloc.dart';
import 'package:cars_e_commerce/Features/discover/domain/usecase/discovery_usecase.dart';
import 'package:cars_e_commerce/Features/discover/presenatation/bloc/saerch_state.dart';
import 'package:cars_e_commerce/Features/discover/presenatation/bloc/search_event.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final DiscoveryUsecase discoveryUsecase;

  SearchBloc(this.discoveryUsecase) : super(const SearchState()) {
    on<getSearched>(
      _onSearchChanged,
      transformer: debounce(const Duration(milliseconds: 500)),
    );
  }

  Future<void> _onSearchChanged(getSearched event, Emitter<SearchState> emit) async {
    if (event.query.isEmpty) {
      emit(state.copyWith(
          searchStatus: SearchRequestStatus.success,
          searchResults: []
      ));
      return;
    }

    emit(state.copyWith(
      searchStatus: SearchRequestStatus.loading,
      searchResults: [],
    ));

    try {
      final res = await discoveryUsecase.call(event.query);
      emit(state.copyWith(
        searchStatus: SearchRequestStatus.success,
        searchResults: res,
      ));
    } catch (e) {
      emit(state.copyWith(
        searchStatus: SearchRequestStatus.error,
        errorMessage: e.toString(),
      ));
    }
  }
}