import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/common/gaps.dart';
import 'package:air_quality_app/common/widgets/empty_results_card.dart';
import 'package:air_quality_app/common/widgets/error_card.dart';
import 'package:air_quality_app/common/widgets/loading_list.dart';
import 'package:air_quality_app/config/app_route.dart';
import 'package:air_quality_app/config/locator.dart';
import 'package:air_quality_app/domain/model/city_search_result.dart';
import 'package:air_quality_app/presentation/search/cubit/search_cubit.dart';
import 'package:air_quality_app/presentation/search/cubit/state/search_state.dart';
import 'package:air_quality_app/presentation/station_details/station_details_page.dart';
import 'package:air_quality_app/presentation/station_details/util/air_quality_values_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'results_widget.dart';
part 'welcome_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String get _searchQuery => _searchController.text.trim();

  Future<void> _onSearch(BuildContext context) {
    return context.read<SearchCubit>().onSearch(_searchQuery);
  }

  void _onResultTap(BuildContext context, int cityId) {
    context.nav.pushNamed(AppRoute.cityDetails, arguments: StationDetailsPageArgs(cityId));
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchCubit>(
      create: (context) => locator.get<SearchCubit>(),
      child: Builder(
        builder: (context) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _searchController,
                        decoration: InputDecoration(hintText: context.i10n.enterThePlaceName),
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () => _onSearch(context),
                      icon: const Icon(Icons.search),
                      label: Text(context.i10n.search),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: BlocBuilder<SearchCubit, SearchState>(
                  builder: (context, state) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 250),
                      child: state.map(
                        idle: (_) => const _WelcomeWidget(),
                        loading: (_) => const LoadingList(),
                        results: (results) => _ResultsWidget(
                          results: results.results,
                          onResultTap: (cityId) => _onResultTap(context, cityId),
                        ),
                        noResults: (_) => Align(
                          alignment: Alignment.topCenter,
                          child: EmptyResultsCard(context.i10n.noResults),
                        ),
                        error: (error) => ErrorCard(message: context.i10n.genericErrorDescription),
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
