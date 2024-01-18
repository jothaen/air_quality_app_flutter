import 'package:air_quality_app/config/locator.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/air_cuality_cubit.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
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
                      success: (success) => Text(success.quality.dateTime.toString()),
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

class _LoadingWidget extends StatelessWidget {
  const _LoadingWidget();

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
