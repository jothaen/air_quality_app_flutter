import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/common/gaps.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/air_quality_cubit.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
import 'package:air_quality_app/presentation/air_quality/util/air_quality_values_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

part 'air_quality_widget.dart';
part 'error_widget.dart';
part 'loading_widget.dart';
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
    return context.read<AirQualityCubit>().onSearch(_searchQuery);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
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
          Expanded(
            child: SingleChildScrollView(
              child: BlocBuilder<AirQualityCubit, AirQualityState>(
                builder: (context, state) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 250),
                    child: state.map(
                      idle: (_) => const _WelcomeWidget(),
                      loading: (_) => const _LoadingWidget(),
                      success: (success) => _AirQualityWidget(quality: success.quality),
                      error: (error) => _ErrorWidget(error: error.error),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
