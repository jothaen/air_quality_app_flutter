import 'package:air_quality_app/common/widgets/loading_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({this.height = 146, super.key});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Card(
        surfaceTintColor: Colors.white,
        elevation: 16,
        child: SizedBox(
          height: height,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                LoadingShimmer(width: 300, height: height / 6),
                LoadingShimmer(width: 150, height: height / 7),
                LoadingShimmer(width: 200, height: height / 8),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
