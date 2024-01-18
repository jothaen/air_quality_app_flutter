import 'package:air_quality_app/config/locator.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/air_cuality_cubit.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
import 'package:air_quality_app/presentation/air_quality/text_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirQualityPage extends StatefulWidget {
  const AirQualityPage({super.key});

  @override
  State<AirQualityPage> createState() => _AirQualityPageState();
}

class _AirQualityPageState extends State<AirQualityPage> {
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
    return BlocProvider<AirQualityCubit>(
      create: (context) => locator.get<AirQualityCubit>(),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Air quality'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        controller: _searchController,
                        decoration: const InputDecoration(hintText: 'Enter the place name'),
                      ),
                    ),
                    TextButton.icon(
                        onPressed: () => _onSearch(context),
                        icon: const Icon(Icons.search),
                        label: const Text('Search')),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: BlocBuilder<AirQualityCubit, AirQualityState>(
                      builder: (context, state) {
                        return state.map(
                          idle: (_) => const _WelcomeWidget(),
                          loading: (_) => const _LoadingWidget(),
                          success: (success) => _AirQualityWidget(quality: success.quality),
                          error: (error) => _ErrorWidget(error: error.error),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _AirQualityWidget extends StatelessWidget {
  final AirQuality quality;

  const _AirQualityWidget({required this.quality});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 36),
        Text(quality.locationName, textAlign: TextAlign.center),
        Text(quality.dateTime),
        const SizedBox(height: 24),
        Text(
          TextMapper.mapAirQuality(quality.airQualityNamed),
          style: Theme.of(context).textTheme.displayMedium,
        ),
        const SizedBox(height: 12),
        Text(quality.airQualityIndex.toString()),
      ],
    );
  }
}

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 48),
        CircularProgressIndicator.adaptive(),
      ],
    );
  }
}

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: 48),
        Text('Welcome to the Air Quality App!'),
        SizedBox(height: 12),
        Text(
          'Use the search bar above to find the information about air quality in your place!',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 48),
          Text('Something went wrong 😔😔😔'),
          SizedBox(height: 12),
          Text(
            'Probably we could not find any station for a given place name. Try again',
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
