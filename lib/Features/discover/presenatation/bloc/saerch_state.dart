import 'package:equatable/equatable.dart';
import '../../data/model/search_model.dart';

enum SearchRequestStatus {
  init,
  loading,
  success,
  error,
}

class SearchState extends Equatable {
  final List<CarSearchModel>? searchResults;
  final SearchRequestStatus searchStatus;
  final String? changeNotifier;
  final dynamic? errorMessage;

  const SearchState({
    this.searchResults,
    this.errorMessage,
    this.searchStatus = SearchRequestStatus.loading,
    this.changeNotifier,
  });

  SearchState copyWith({
    List<CarSearchModel>? searchResults,
    SearchRequestStatus? searchStatus,
    dynamic? errorMessage,
  }) {
    return SearchState(
      errorMessage: errorMessage ?? this.errorMessage,
      searchResults: searchResults ?? this.searchResults,
      searchStatus: searchStatus ?? this.searchStatus,
      changeNotifier: DateTime.now().toString(),
    );
  }

  @override
  List<Object?> get props => [searchResults, searchStatus, changeNotifier];
}