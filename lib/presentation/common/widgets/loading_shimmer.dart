import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class LoadingShimmer extends StatelessWidget {
  const LoadingShimmer({required this.width, required this.height, super.key});
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Shimmer(
      color: Colors.grey,
      child: SizedBox(
        width: width,
        height: height,
      ),
    );
  }
}
