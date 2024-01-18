import 'package:air_quality_app/config/locator.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/air_cuality_cubit.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
import 'package:air_quality_app/presentation/air_quality/text_mapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirQualityPage extends StatelessWidget {
  const AirQualityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AirQualityCubit>(
      create: (context) => locator.get<AirQualityCubit>()..onInit(),
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Air quality'),
          ),
          body: RefreshIndicator(
            onRefresh: () async => context.read<AirQualityCubit>().onInit(),
            child: SingleChildScrollView(
              child: Container(
                alignment: Alignment.center,
                height: MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top,
                child: BlocBuilder<AirQualityCubit, AirQualityState>(
                  builder: (context, state) {
                    return state.map(
                      loading: (_) => const _LoadingWidget(),
                      success: (success) => _AirQualityWidget(quality: success.quality),
                      error: (error) => Text(error.toString()),
                    );
                  },
                ),
              ),
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
        Text(quality.locationName),
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
