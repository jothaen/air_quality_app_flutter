import 'package:air_quality_app/domain/search_repository.dart';
import 'package:air_quality_app/presentation/search/cubit/state/search_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._repository) : super(const SearchState.idle());

  final SearchRepository _repository;

  Future<void> onSearch(String query) async {
    if (query.isEmpty) {
      emit(const SearchState.idle());
      return;
    }

    emit(const SearchState.loading());
    try {
      final results = await _repository.searchForCities(query);
      emit(results.isEmpty ? const SearchState.noResults() : SearchState.results(results));
    } catch (e) {
      print('chuj $e');
      emit(SearchState.error(Exception('Something went wrong')));
    }
  }
}
