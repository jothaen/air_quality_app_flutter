import 'package:air_quality_app/common/widgets/loading_card.dart';
import 'package:flutter/material.dart';

class LoadingList extends StatelessWidget {
  const LoadingList({this.elementsCount = 5, this.listItemHeight = 110, super.key});
  final int elementsCount;
  final double listItemHeight;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: elementsCount,
      itemBuilder: (context, _) => LoadingCard(height: listItemHeight),
    );
  }
}
