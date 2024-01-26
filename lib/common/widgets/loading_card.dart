import 'package:air_quality_app/common/gaps.dart';
import 'package:air_quality_app/common/widgets/loading_shimmer.dart';
import 'package:flutter/material.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Card(
        surfaceTintColor: Colors.white,
        elevation: 16,
        child: SizedBox(
          height: 146,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                marginVertical16,
                LoadingShimmer(width: 300, height: 20),
                marginVertical8,
                LoadingShimmer(width: 150, height: 14),
                marginVertical16,
                LoadingShimmer(width: 200, height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
